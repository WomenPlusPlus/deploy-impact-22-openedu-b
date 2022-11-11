package main

import (
	"context"
	"fmt"

	"github.com/WomenPlusPlus/deploy-impact-22-openedu-b/pg_to_es/service"
)

func main() {

	// init service
	log := service.InitLogger()
	ctx := context.Background()
	ev, err := service.GetPGPass()
	if err != nil {
		log.Fatal("getting pgpass failed")
	}

	// connect to postgres
	log.Info("connecting pg")
	pg, err := service.ConnectPG(ctx, fmt.Sprintf(`postgres://postgres:%s@20.13.34.93:2345/openedub?pool_max_conns=10`, ev.Pgpass), log)

	if err != nil {
		log.Fatal("connection to pg failed")
	}

	// connect to elastic and ping
	log.Info("connecting es")
	es, err := service.ConnectES(ctx, log)
	if err != nil {
		log.Fatal("connection to es failed")
	}
	if err := es.Ping(); err != nil {
		log.Fatal("could not ping es")
	}

	// insert the data to elastic
	log.Info("getting data from es")
	data, err := es.ReadDocs(ctx)
	if err != nil {
		log.Fatal("failed to create mapping")
	}

	if err := pg.WriteToPG(ctx, "project_crawled", data); err != nil {
		log.Fatal("failed to save the data")
	}

	log.Info("all done")
}
