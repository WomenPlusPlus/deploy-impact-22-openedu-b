package service

import (
	"bytes"
	"context"
	"encoding/json"
	"io"
	"strings"
	"time"

	"github.com/elastic/go-elasticsearch/v8"
	//"github.com/elastic/go-elasticsearch/v8/esapi"
	"go.uber.org/zap"
	"strconv"
)

type ESDB struct {
	conn *elasticsearch.Client
	log  *zap.Logger
}

var index string = "nutch"

func ConnectES(ctx context.Context, logger *zap.Logger) (*ESDB, error) {
	db := ESDB{
		log: logger,
	}
	cfg := elasticsearch.Config{
		Addresses: []string{
			"http://localhost:9200",
		}}
	es, err := elasticsearch.NewClient(cfg)
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

type ProjectData struct {
	licence      string
	title        string
	url          string
	boost        float64
	lastModified time.Time
	lang         string
}

func (db *ESDB) ReadDocs(ctx context.Context) ([][]interface{}, error) {
	var mapResp map[string]interface{}
	var buf bytes.Buffer
	data := [][]interface{}{}

	query := `{"query": {"match_all" : {}}, "size": 100}`

	var b strings.Builder
	b.WriteString(query)
	read := strings.NewReader(b.String())
	if err := json.NewEncoder(&buf).Encode(read); err != nil {
		db.log.Error("Error encoding query", zap.Error(err))
		return nil, err
	}

	res, err := db.conn.Search(
		db.conn.Search.WithContext(ctx),
		db.conn.Search.WithIndex(index),
		db.conn.Search.WithBody(read),
		db.conn.Search.WithTrackTotalHits(true),
		db.conn.Search.WithPretty(),
	)
	if err != nil {
		db.log.Error("Error calling es", zap.Error(err))
		return nil, err
	}

	defer res.Body.Close()

	// Decode the JSON response and using a pointer
	if err := json.NewDecoder(res.Body).Decode(&mapResp); err != nil {
		db.log.Error("Error parsing the response body", zap.Error(err))
		return nil, err
	}

	for _, hit := range mapResp["hits"].(map[string]interface{})["hits"].([]interface{}) {

		// Parse the attributes/fields of the document
		doc := hit.(map[string]interface{})
		ds := doc["_source"].(map[string]interface{})

		lic := ""
		if ds["cc"] != nil {
			for _, l := range ds["cc"].([]interface{}) {
				for _, ll := range l.([]interface{}) {
					lic += " ," + ll.(string)
				}
			}
		}
		var t time.Time
		if ds["lastModified"] != nil {
			t, err = time.Parse("2006-01-02T15:04:05Z", ds["lastModified"].(string))
			if err != nil {
				db.log.Error("failed to parse time", zap.Error(err))
				return nil, err
			}
		}
		s, err := strconv.ParseFloat(ds["boost"].(string), 32)
		if err != nil {
			db.log.Error("failed to parse boost", zap.Error(err))
			return nil, err
		}
		data = append(data, []interface{}{
			ds["url"].(string),
			ds["title"].(string),
			lic,
			ds["content"].(string),
			"apache_nutch",
			ds["lang"].(string),
			t,
			s,
		})

	}
	return data, nil
}
