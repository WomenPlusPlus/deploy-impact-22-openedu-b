package service

import (
	"context"
	"fmt"
	"github.com/gocolly/colly"
	"go.uber.org/zap"
	"strings"
	"time"
)

type InternetDB struct {
	conn *colly.Collector
	log  *zap.Logger
}

func ConnectInternet(ctx context.Context, log *zap.Logger, domains []string) (*InternetDB, error) {
	db := InternetDB{log: log}

	c := colly.NewCollector(
		colly.AllowedDomains(domains...),
	)

	db.conn = c

	return &db, nil
}

type InternetData struct {
	Link        string
	Title       string
	Description string
	Author      string
	Type        string
	Subject     string
	Skills      string
}

func (db *InternetDB) ReadFromTechblog(page string, d chan [][]interface{}, errChan chan error) {
	defer close(d)
	data := [][]interface{}{}

	db.conn.OnHTML(".posts", func(e *colly.HTMLElement) {
		classes := e.ChildAttrs("article", "class")
		i := 0
		e.ForEach(".post", func(_ int, el *colly.HTMLElement) {

			cl := strings.Split(classes[i], " ")
			tags := ""
			cats := ""
			for _, c := range cl {
				if strings.HasPrefix(c, "tag") {
					c = strings.Replace(c, "tag", "", 1)
					c = strings.Replace(c, "-", " ", -1)
					tags += c + ", "
				} else if strings.HasPrefix(c, "category") {
					c = strings.Replace(c, "category-", "", 1)
					c = strings.Replace(c, "-", " ", -1)
					cats += c + ", "
				}
			}
			tags = strings.Trim(tags, ", ")
			cats = strings.Trim(cats, ", ")
			id := InternetData{Title: el.ChildText(".entry-title"),
				Link:        el.ChildAttr("a", "href"),
				Author:      "Techblog scraper",
				Description: el.ChildText(".entry-summary"),
				Subject:     tags,
				Type:        cats,
			}
			data = append(data, []interface{}{id.Link, id.Title,
				id.Description, id.Author,
				id.Type, id.Subject, id.Skills})
			i += 1
		})

	})
	if err := db.conn.Visit(page); err != nil {
		db.log.Error("failed to visit techblog", zap.Error(err))
		errChan <- err
	}

	d <- data
	data = [][]interface{}{}
	p := page
	for i := 2; i <= 12; i++ {
		time.Sleep(10 * time.Second) // too many requests otherwise
		p += fmt.Sprintf("page/%d/", i)
		if err := db.conn.Visit(p); err != nil {
			db.log.Error("failed to visit techblog", zap.String("page", p), zap.Error(err))
			errChan <- err
		}
		d <- data
		data = [][]interface{}{}
		p = page

	}

}

func (db *InternetDB) ReadFromWikiSearch(page string, d chan [][]interface{}, errChan chan error) {
	defer close(d)
	data := [][]interface{}{}

	db.conn.OnHTML(".mw-search-results-container", func(e *colly.HTMLElement) {

		e.ForEach(".mw-search-result-ns-4", func(_ int, el *colly.HTMLElement) {

			id := InternetData{Title: el.ChildAttr("a", "title"),
				Link:        el.ChildAttr("a", "href"),
				Author:      "Wikisearch scraper",
				Description: el.ChildText(".searchresult"),
			}
			data = append(data, []interface{}{id.Link, id.Title,
				id.Description, id.Author,
				id.Type, id.Subject, id.Skills})
		})

	})
	if err := db.conn.Visit(page); err != nil {
		db.log.Error("failed to visit wikisearch", zap.Error(err))
		errChan <- err
	}

	d <- data
	data = [][]interface{}{}
	p := page
	for i := 2; i <= 3; i++ {
		time.Sleep(10 * time.Second) // too many requests otherwise
		p = "https://en.wikipedia.org/w/index.php?advancedSearch-current={%22fields%22:{%22plain%22:[%22wiki%22],%22phrase%22:%22education%22}}&limit=500&offset=500&prefix=Wikipedia%3AWikiProject&profile=all&search=wiki+education&title=Special:Search&ns0=1"
		if err := db.conn.Visit(p); err != nil {
			db.log.Error("failed to visit wikisearch", zap.String("page", p), zap.Error(err))
			errChan <- err
		}
		d <- data
		data = [][]interface{}{}

	}

}
