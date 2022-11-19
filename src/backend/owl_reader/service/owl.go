package service

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"strings"

	"go.uber.org/zap"
	"golang.org/x/oauth2"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/option"
	"google.golang.org/api/sheets/v4"
)

type OWLDB struct {
	conn *sheets.Service
	log  *zap.Logger
}

// Retrieve a token, saves the token, then returns the generated client.
func getClient(config *oauth2.Config) *http.Client {
	// The file token.json stores the user's access and refresh tokens, and is
	// created automatically when the authorization flow completes for the first
	// time.
	tokFile := "token.json"
	tok, err := tokenFromFile(tokFile)
	if err != nil {
		tok = getTokenFromWeb(config)
		saveToken(tokFile, tok)
	}
	return config.Client(context.Background(), tok)
}

// Request a token from the web, then returns the retrieved token.
func getTokenFromWeb(config *oauth2.Config) *oauth2.Token {
	authURL := config.AuthCodeURL("state-token", oauth2.AccessTypeOffline)
	fmt.Printf("Go to the following link in your browser then type the "+
		"authorization code: \n%v\n", authURL)

	var authCode string
	if _, err := fmt.Scan(&authCode); err != nil {
		log.Fatalf("Unable to read authorization code: %v", err)
	}

	tok, err := config.Exchange(context.TODO(), authCode)
	if err != nil {
		log.Fatalf("Unable to retrieve token from web: %v", err)
	}
	return tok
}

// Retrieves a token from a local file.
func tokenFromFile(file string) (*oauth2.Token, error) {
	f, err := os.Open(file)
	if err != nil {
		return nil, err
	}
	defer f.Close()
	tok := &oauth2.Token{}
	err = json.NewDecoder(f).Decode(tok)
	return tok, err
}

// Saves a token to a file path.
func saveToken(path string, token *oauth2.Token) {
	fmt.Printf("Saving credential file to: %s\n", path)
	f, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0600)
	if err != nil {
		log.Fatalf("Unable to cache oauth token: %v", err)
	}
	defer f.Close()
	json.NewEncoder(f).Encode(token)
}

func ConnectGS(ctx context.Context, log *zap.Logger) (*GSDB, error) {
	db := GSDB{log: log}

	b, err := os.ReadFile("credentials.json")
	if err != nil {
		log.Error("Unable to read client secret file", zap.Error(err))
		return nil, err
	}
	config, err := google.ConfigFromJSON(b, "https://www.googleapis.com/auth/spreadsheets.readonly")
	if err != nil {
		log.Error("Unable to parse client secret file to config", zap.Error(err))
		return nil, err
	}
	client := getClient(config)

	srv, err := sheets.NewService(ctx, option.WithHTTPClient(client))
	if err != nil {
		log.Error("Unable to retrieve Sheets client", zap.Error(err))
		return nil, err
	}

	db.conn = srv

	return &db, err
}

type GSData struct {
	Link        string
	Title       string
	Description string
	Author      string
	Type        string
	Subject     string
	Skills      string
}

func (db *GSDB) ReadFromIndividualSheet(spreadsheetId string, readRange string) ([][]interface{}, error) {
	resp, err := db.conn.Spreadsheets.Values.Get(spreadsheetId, readRange).Do()
	if err != nil {
		db.log.Error("Unable to retrieve data from sheet", zap.Error(err))
		return nil, err
	}

	data := [][]interface{}{}

	if len(resp.Values) == 0 {
		db.log.Warn("No data found.")
	} else {
		for _, row := range resp.Values {
			gsd := GSData{Link: row[0].(string),
				Title:       row[1].(string),
				Description: row[2].(string)}
			if len(row) > 3 {
				gsd.Author = row[3].(string)
			}
			if len(row) > 6 {
				gsd.Title = row[6].(string)
			}
			data = append(data, []interface{}{gsd.Link, gsd.Title,
				gsd.Description, gsd.Author,
				gsd.Type, gsd.Subject, gsd.Skills})

		}
	}

	return data, nil
}

func (db *GSDB) ReadFromOpeneduSheet(spreadsheetId string, readRange string) ([][]interface{}, error) {
	resp, err := db.conn.Spreadsheets.Values.Get(spreadsheetId, readRange).ValueRenderOption("FORMULA").Do()
	if err != nil {
		db.log.Error("Unable to retrieve data from sheet", zap.Error(err))
		return nil, err
	}

	data := [][]interface{}{}

	if len(resp.Values) == 0 {
		db.log.Warn("No data found.")
	} else {
		for _, row := range resp.Values {
			var (
				link, title string
			)
			r0 := row[0].(string)
			if strings.Contains(r0, "HYPERLINK") {
				ss := strings.Split(r0, ",")
				link = strings.Trim(strings.Trim(ss[0], "=HYPERLINK("), "\"")
				title = strings.Trim(strings.Trim(ss[1], ")"), "\"")
			} else {
				link = ""
				title = r0
			}
			gsd := GSData{Link: link,
				Title:       title,
				Description: row[1].(string)}
			if len(row) > 5 {
				gsd.Author = row[5].(string)
			}
			if len(row) > 15 {
				gsd.Subject = row[15].(string)
			}
			if len(row) > 16 {
				gsd.Skills = row[16].(string)
			}
			data = append(data, []interface{}{gsd.Link, gsd.Title, gsd.Description,
				gsd.Author, gsd.Type, gsd.Subject, gsd.Skills})

		}
	}

	return data, nil
}
