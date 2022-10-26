package service

import (
	"context"
	"github.com/jackc/pgtype"
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
		title varchar(200) NOT NULL, 
		description varchar(2000) NOT NULL, 
		author varchar(100),
		type varchar(100));`)
	if err != nil {
		db.log.Error("table creation failed: ", zap.Error(err))
		return nil, err
	}

	return &db, nil
}

type ProjectData struct {
	By          pgtype.Varchar `json:"by"`
	Title       pgtype.Varchar `json:"title"`
	Link        pgtype.Varchar `json:"link"`
	Description pgtype.Varchar `json:"description"`
}

func (db *PGDB) WriteToPG(ctx context.Context, data [][]interface{}) error {
	copyCount, err := db.conn.CopyFrom(ctx,
		pgx.Identifier{"public", "project_new"},
		[]string{"link", "title", "description", "author", "type"},
		pgx.CopyFromRows(data),
	)
	if err != nil {
		db.log.Error("copy from failed", zap.Error(err))
		return err
	}

	db.log.Info("inserted rows", zap.Int("count", int(copyCount)))
	return nil
}
