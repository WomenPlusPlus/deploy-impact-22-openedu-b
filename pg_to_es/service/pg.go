package service

import (
	"context"
	"github.com/jackc/pgtype"
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

	return &db, nil
}

type ProjectData struct {
	by          pgtype.Varchar
	title       pgtype.Varchar
	link        pgtype.Varchar
	description pgtype.Varchar
}

func (db *PGDB) ReadProject(ctx context.Context) ([]ProjectData, error) {
	var pd []ProjectData
	row, err := db.conn.Query(ctx, `select by, title_en ,link, short_description_en from sito_project sp `)
	if err != nil {
		db.log.Error("Select project data failed:", zap.Error(err))
		return nil, err
	}
	defer row.Close()

	for row.Next() {
		var r ProjectData
		err = row.Scan(&r.by, &r.title, &r.link, &r.description)
		if err != nil {
			db.log.Error("Select row failed:", zap.Error(err))
			return nil, err
		}
		pd = append(pd, r)
	}
	return pd, nil
}
