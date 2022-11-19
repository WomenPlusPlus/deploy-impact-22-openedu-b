package service

import (
	"context"
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"go.uber.org/zap"
)

func NewServer(endpoint string, handlers chi.Router) *http.Server {
	return &http.Server{Addr: endpoint, Handler: handlers}
}

func ESRouter(db *ESDB, logger *zap.Logger) chi.Router {
	ctx := context.Background()
	r := chi.NewRouter()
	mh := NewESHandler(db, logger)

	// use inbuild middleware
	r.Use(middleware.RequestID)
	r.Use(middleware.RealIP)
	r.Use(middleware.Logger)
	r.Use(middleware.Recoverer)

	r.Get("/search", mh.PostSearchES(ctx))
	return r
}

type ESHandler struct {
	db     *ESDB
	logger *zap.Logger
}

func NewESHandler(db *ESDB, logger *zap.Logger) ESHandler {
	return ESHandler{
		db:     db,
		logger: logger,
	}
}

func (mh *ESHandler) PostSearchES(ctx context.Context) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {

		q := r.URL.Query().Get("q")
		data, err := mh.db.SearchAllFields(ctx, q)
		if err != nil {
			http.Error(w, "404 - search failed", http.StatusNotFound)
			return
		}

		w.Header().Set("Content-Type", "application/json")
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(data))
	}
}
