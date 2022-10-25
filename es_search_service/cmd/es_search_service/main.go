package main

import (
	"context"
	"fmt"
	"github.com/WomenPlusPlus/deploy-impact-22-openedu-b/es_search_service/service"
	"go.uber.org/zap"
	l "log"
	"os"
	"os/signal"
	"syscall"
)

var endpoint string = "0.0.0.0:8087"

func main() {

	// init service
	log := service.InitLogger()
	ctx := context.Background()

	// connect to elastic and ping
	log.Info("connecting es")
	es, err := service.ConnectES(ctx, log)
	if err != nil {
		log.Fatal("connection to es failed")
	}
	if err := es.Ping(); err != nil {
		log.Fatal("could not ping es")
	}

	r := service.ESRouter(es, log)

	srv := service.NewServer(endpoint, r)

	quit := make(chan os.Signal)
	signal.Notify(quit, syscall.SIGINT, syscall.SIGTERM, syscall.SIGQUIT)

	go func() {
		sig := <-quit
		log.Info(fmt.Sprintf("caught sig: %+v", sig))
		if err := srv.Shutdown(context.Background()); err != nil {
			// Error from closing listeners, or context timeout:
			log.Error("HTTP server Shutdown:", zap.Error(err))
		}
	}()

	log.Info("Start serving on", zap.String("endpoint name", endpoint))
	l.Fatal(srv.ListenAndServe())
}
