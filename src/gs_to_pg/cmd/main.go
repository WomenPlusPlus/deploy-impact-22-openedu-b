package main

import (
	"context"
	"fmt"

	"github.com/WomenPlusPlus/deploy-impact-22-openedu-b/gs_to_pg/service"
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
	gs, err := service.ConnectGS(ctx, log)
	if err != nil {
		log.Fatal("connection to gs failed")
	}

	// get the data from pg
	log.Info("getting data from gs")
	individual, err := gs.ReadFromSheet("1IoihpdqrS3cE2rfukDXDEC0aeEJ_Wnd0g9PoiSz11jk", "Individual!A6:G20")
	if err != nil {
		log.Fatal("ailed to read individual data")
	}

	log.Info("inserting to pg")
	pg.WriteToPG(ctx, individual)

	log.Info("all done")
}
