package service

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v4"
	"github.com/jackc/pgx/v4/pgxpool"
	"go.uber.org/zap"
)

type PGDB struct {
	path string
	conn *pgxpool.Pool
	log  *zap.Logger
}

func ConnectPG(ctx context.Context, pgpath string, logger *zap.Logger, table string) (*PGDB, error) {
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

	_, err = db.conn.Exec(ctx, fmt.Sprintf(`CREATE TABLE IF NOT EXISTS public.%s 
	(id serial PRIMARY KEY, 
		link varchar(500) NOT NULL,
		title varchar(200) NOT NULL, 
		description varchar(2000) NOT NULL, 
		author varchar(500),
		type varchar(100),
		subject varchar(300),
		skills varchar(300));
		DELETE FROM public.%s WHERe True`, table, table))
	if err != nil {
		db.log.Error(fmt.Sprintf("%s creation failed: ", table), zap.Error(err))
		return nil, err
	}

	return &db, nil
}

func (db *PGDB) WriteToPG(ctx context.Context, table string, d chan [][]interface{}, errChan chan error, done chan bool) {
	for data := range d {
		copyCount, err := db.conn.CopyFrom(ctx,
			pgx.Identifier{"public", table},
			[]string{"link", "title", "description", "author", "type", "subject", "skills"},
			pgx.CopyFromRows(data),
		)
		if err != nil {
			db.log.Error("copy from failed", zap.String("table", table), zap.Error(err))
			errChan <- err
		}

		db.log.Info("inserted rows", zap.Int("count", int(copyCount)))
	}

	done <- true

}

func (db *PGDB) UpdateMainTable(ctx context.Context, table string) error {
	_, err := db.conn.Exec(ctx, fmt.Sprintf(`
	INSERT INTO public.project_new 
	SELECT * FROM public.%s 
	ON CONFLICT (link) DO UPDATE SET 
	title= EXCLUDED.title, description=EXCLUDED.description, 
	author=EXCLUDED.author, type=EXCLUDED.type, 
	subject=EXCLUDED.subject, skills=EXCLUDED.skills;
	`, table))
	if err != nil {
		db.log.Error("update main table with individual failed", zap.Error(err))
		return err
	}

	return nil
}
