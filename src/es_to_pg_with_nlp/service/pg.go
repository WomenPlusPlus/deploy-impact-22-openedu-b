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

	_, err = db.conn.Exec(ctx, `drop table public.project_crawled;
	CREATE TABLE IF NOT EXISTS public.project_crawled 
	(id serial PRIMARY KEY, 
		link varchar(500) NOT NULL,
		title varchar(200) NOT NULL, 
		license varchar(200), 
		description varchar(20000) NOT NULL, 
		author varchar(500),
		type varchar(500),
		topic varchar(500),
		skills varchar(300),
		lang varchar(10),
		lastmodified timestamp,
		rating float(8));
		DELETE FROM public.project_crawled WHERe True`)
	if err != nil {
		db.log.Error("project_crawled creation failed: ", zap.Error(err))
		return nil, err
	}

	return &db, nil
}

func (db *PGDB) WriteToPG(ctx context.Context, table string, data [][]interface{}) error {
	copyCount, err := db.conn.CopyFrom(ctx,
		pgx.Identifier{"public", table},
		[]string{"link", "title", "license", "description", "author", "lang", "lastmodified", "rating", "type", "topic"},
		pgx.CopyFromRows(data),
	)
	if err != nil {
		db.log.Error("copy from failed", zap.String("table", table), zap.Error(err))
		return err
	}

	db.log.Info("inserted rows", zap.Int("count", int(copyCount)))
	return nil
}
