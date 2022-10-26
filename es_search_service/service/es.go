package service

import (
	"context"
	"time"
	//"encoding/json"
	"fmt"
	"io"
	"os"
	"strings"

	"github.com/elastic/go-elasticsearch/v8"
	"github.com/elastic/go-elasticsearch/v8/esapi"
	"go.uber.org/zap"
)

type ESDB struct {
	conn *elasticsearch.Client
	log  *zap.Logger
}

var index string = "openedupg"

func ConnectES(ctx context.Context, logger *zap.Logger) (*ESDB, error) {
	db := ESDB{
		log: logger,
	}
	esHost := os.Getenv("ES_HOST")
	if esHost == "" {
		esHost = "http://localhost:9200"
	}
	db.log.Info("connecting to es", zap.String("address", esHost))
	cfg := elasticsearch.Config{
		Addresses: []string{esHost},
	}
	es, err := elasticsearch.NewClient(cfg)
	if err != nil {
		db.log.Error("failed connect to elastic", zap.Error(err))
	}

	db.conn = es

	return &db, nil
}

func (db *ESDB) Ping() error {

	// Have the client instance return a response
	var (
		err error
		res *esapi.Response
	)
	for _, i := range []time.Duration{1 * time.Second, 10 * time.Second, 20 * time.Second, 40 * time.Second} {
		res, err = db.conn.Info()
		if err == nil {
			break
		}
		db.log.Warn("ping to es failed. sleeping....", zap.Duration("time", i))
		time.Sleep(i)
	}
	if err != nil {
		db.log.Error("ping failed", zap.Error(err))
		return err
	}
	defer res.Body.Close()
	b, err := io.ReadAll(res.Body)
	if err != nil {
		db.log.Error("could not read body", zap.Error(err))
		return err
	}
	db.log.Info(string(b))
	return nil
}

func (db *ESDB) SearchAllFields(ctx context.Context, q string) ([]byte, error) {
	qs := fmt.Sprintf(`
	{
	  "query": {
		"match": {
		  "description": {
			"query": "%s",
			"fuzziness": "AUTO"
		  }
		}
	  }
	}`, q)

	data := strings.NewReader(qs)

	req := esapi.SearchRequest{
		Index:  []string{index},
		Body:   data,
		Pretty: true,
	}

	res, err := req.Do(ctx, db.conn)
	if err != nil {
		db.log.Error("failed to do search request", zap.Error(err))
		return nil, err

	}
	defer res.Body.Close()
	b, err := io.ReadAll(res.Body)
	if err != nil {
		db.log.Error("could not read body", zap.Error(err))
		return nil, err
	}
	db.log.Info(string(b))

	return b, nil
}
