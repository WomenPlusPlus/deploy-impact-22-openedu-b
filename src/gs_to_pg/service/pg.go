package service

import (
	"context"
	"github.com/jackc/pgx/v4"
	"github.com/jackc/pgx/v4/pgxpool"
	"go.uber.org/zap"
)

type PGDB struct {
	path string
	conn *pgxpool.Pool
	log  *zap.Logger
}

func ConnectPG(ctx context.Context, pgpath string, logger *zap.Logger) (*PGDB, error) {
	db := PGDB{
		path: pgpath,
		log:  logger,
	}
	conn, err := pgxpool.Connect(context.Background(), pgpath)

	if err != nil {
		db.log.Error("unable to connect to database: ", zap.Error(err))
		return nil, err
	}
	db.conn = conn

	_, err = db.conn.Exec(ctx, `CREATE TABLE IF NOT EXISTS public.project_new 
	(id serial PRIMARY KEY, 
		link varchar(500) UNIQUE NOT NULL,
		title varchar(300) NOT NULL, 
		description varchar(2000) NOT NULL, 
		author varchar(300),
		type varchar(100),
		subject varchar(300),
		skills varchar(300));`)
	if err != nil {
		db.log.Error("project_new creation failed: ", zap.Error(err))
		return nil, err
	}

	_, err = db.conn.Exec(ctx, `CREATE TABLE IF NOT EXISTS public.project_individual_stage 
	(id serial PRIMARY KEY, 
		link varchar(500) NOT NULL,
		title varchar(200) NOT NULL, 
		description varchar(2000) NOT NULL, 
		author varchar(100),
		type varchar(100),
		subject varchar(100),
		skills varchar(100));
		DELETE FROM public.project_individual_stage  WHERE True`)
	if err != nil {
		db.log.Error("project_individual_stage  creation failed: ", zap.Error(err))
		return nil, err
	}

	_, err = db.conn.Exec(ctx, `CREATE TABLE IF NOT EXISTS public.project_openedu_stage 
	(id serial PRIMARY KEY, 
		link varchar(500) NOT NULL,
		title varchar(200) NOT NULL, 
		description varchar(2000) NOT NULL, 
		author varchar(500),
		type varchar(100),
		subject varchar(300),
		skills varchar(300));
		DELETE FROM public.project_openedu_stage WHERe True`)
	if err != nil {
		db.log.Error("project_openedu_stage creation failed: ", zap.Error(err))
		return nil, err
	}

	return &db, nil
}

func (db *PGDB) WriteToPG(ctx context.Context, table string, data [][]interface{}) error {
	copyCount, err := db.conn.CopyFrom(ctx,
		pgx.Identifier{"public", table},
		[]string{"link", "title", "description", "author", "type", "subject", "skills"},
		pgx.CopyFromRows(data),
	)
	if err != nil {
		db.log.Error("copy from failed", zap.String("table", table), zap.Error(err))
		return err
	}

	db.log.Info("inserted rows", zap.Int("count", int(copyCount)))
	return nil
}

func (db *PGDB) UpdateMainTable(ctx context.Context) error {
	_, err := db.conn.Exec(ctx, `
	INSERT INTO public.project_new 
	SELECT * FROM public.project_individual_stage 
	ON CONFLICT (link) DO UPDATE SET 
	title= EXCLUDED.title, description=EXCLUDED.description, 
	author=EXCLUDED.author, type=EXCLUDED.type, 
	subject=EXCLUDED.subject, skills=EXCLUDED.skills;
	`)
	if err != nil {
		db.log.Error("update main table with individual failed", zap.Error(err))
		return err
	}

	_, err = db.conn.Exec(ctx, `
	INSERT INTO public.project_new 
	SELECT * FROM public.project_openedu_stage   where link!='' 
	ON CONFLICT (link) DO UPDATE SET 
	title= EXCLUDED.title, description=EXCLUDED.description, 
	author=EXCLUDED.author, type=EXCLUDED.type, 
	subject=EXCLUDED.subject, skills=EXCLUDED.skills;
	`)
	if err != nil {
		db.log.Error("update main table with openedu failed", zap.Error(err))
		return err
	}

	return nil
}
