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
	pg, err := service.ConnectPG(ctx, fmt.Sprintf(`postgres://deploy_impact:%s@deploy-impact-cg-chrisg-demo.aivencloud.com:24947/openedu?pool_max_conns=10`, ev.Pgpass), log)

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

	// get the data from pg
	log.Info("getting data from pg")
	data, err := pg.ReadProject(ctx)
	if err != nil {
		log.Fatal("reading data failed")
	}

	// insert the data to elastic
	log.Info("inserting data to es")
	if err := es.CreateMapping(ctx); err != nil {
		log.Fatal("failed to create mapping")
	}

	if err := es.PutDocs(ctx, data); err != nil {
		log.Fatal("failed to put documents")
	}

	log.Info("all done")
}
