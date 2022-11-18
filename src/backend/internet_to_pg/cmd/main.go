package main

import (
	"context"
	"fmt"

	"github.com/WomenPlusPlus/deploy-impact-22-openedu-b/internet_to_pg/service"
	"go.uber.org/zap"
)

var table string = "project_wikisearch_stage" //"project_techblog_stage"

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
	pg, err := service.ConnectPG(ctx, fmt.Sprintf(`postgres://postgres:%s@localhost:2345/openedub?pool_max_conns=10`,
		ev.Pgpass), log, table)

	if err != nil {
		log.Fatal("connection to pg failed")
	}

	// connect to elastic and ping
	log.Info("connecting es")
	gs, err := service.ConnectInternet(ctx, log, []string{"techblog.wikimedia.org", "en.wikipedia.org"})
	if err != nil {
		log.Fatal("connection to gs failed")
	}

	// get the data from pg

	errorChan := make(chan error)
	go func() {
		err = <-errorChan
		if err != nil {
			log.Fatal("something went wrong", zap.Error(err))
		}
	}()

	data := make(chan [][]interface{})
	done := make(chan bool)

	/*log.Info("getting data from techblog")
	go gs.ReadFromTechblog("https://techblog.wikimedia.org/posts/", data, errorChan)
	*/

	log.Info("getting data from wikisearch")
	go gs.ReadFromWikiSearch("https://en.wikipedia.org/w/index.php?title=Special:Search&limit=500&offset=0&ns0=1&ns1=1&ns2=1&ns3=1&ns4=1&ns5=1&ns6=1&ns7=1&ns8=1&ns9=1&ns10=1&ns11=1&ns12=1&ns13=1&ns14=1&ns15=1&ns100=1&ns101=1&ns118=1&ns119=1&ns710=1&ns711=1&ns828=1&ns829=1&ns2300=1&ns2301=1&ns2302=1&ns2303=1&prefix=Wikipedia%3AWikiProject&search=wiki+education&advancedSearch-current={%22fields%22:{%22plain%22:[%22wiki%22],%22phrase%22:%22education%22}}", data, errorChan)

	log.Info("inserting to pg")
	go pg.WriteToPG(ctx, table, data, errorChan, done)

	<-done
	if err := pg.UpdateMainTable(ctx, table); err != nil {
		log.Fatal("failed to update main")
	}

	log.Info("all done")
}
