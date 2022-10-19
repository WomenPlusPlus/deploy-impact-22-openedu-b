package service

import (
	"bytes"
	"context"
	"encoding/json"
	"io"
	"strconv"
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
	es, err := elasticsearch.NewDefaultClient()
	if err != nil {
		db.log.Error("failed connect to elastic", zap.Error(err))
	}

	db.conn = es

	return &db, nil
}

func (db *ESDB) Ping() error {

	// Have the client instance return a response
	res, err := db.conn.Info()

	// Deserialize the response into a map.
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

func (db *ESDB) CreateMapping(ctx context.Context) error {
	req := esapi.IndicesExistsRequest{
		Index: []string{index},
	}

	res, err := req.Do(ctx, db.conn)
	if err != nil {
		db.log.Error("could not check indices", zap.Error(err))
	}

	if res.StatusCode == 404 {

		mapping := `{"mappings":{  
		"properties":{  
		   "by":{  
			  "type":"keyword"
		   },
		   "link":{  
			"type":"keyword"
		 },
		   "title":{  
			  "type":"text"
		   },
		   "description":{  
			  "type":"text"
		   }
		}
	 }
  }`
		indexReq := esapi.IndicesCreateRequest{
			Index: index,
			Body:  strings.NewReader(string(mapping)),
		}

		res, err = indexReq.Do(ctx, db.conn)
		if err != nil {
			db.log.Error("creating mapping failed", zap.Error(err))
			return err
		}
		defer res.Body.Close()
		b, err := io.ReadAll(res.Body)
		if err != nil {
			db.log.Error("could not read body", zap.Error(err))
			return err
		}
		db.log.Info(string(b))
	}

	return nil
}

func (db *ESDB) PutDocs(ctx context.Context, data []ProjectData) error {

	for i, d := range data {
		b, err := db.prepDocs(d)
		if err != nil {
			return err
		}
		if err := db.addDocs(ctx, b, i); err != nil {
			return err
		}

	}
	db.log.Info("all docs are inserted")
	return nil
}

func (db *ESDB) prepDocs(data ProjectData) (io.Reader, error) {
	b, err := json.Marshal(data)
	if err != nil {
		db.log.Error("failed marshal data", zap.Error(err))
		return nil, err
	}
	iob := bytes.NewReader(b)
	return iob, nil

}

func (db *ESDB) addDocs(ctx context.Context, data io.Reader, i int) error {
	req := esapi.IndexRequest{
		Index:      index,
		DocumentID: strconv.Itoa(i + 1),
		Body:       data,
		Refresh:    "true",
	}

	res, err := req.Do(ctx, db.conn)
	if err != nil {
		db.log.Error("failed to insert doc", zap.Error(err))
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
