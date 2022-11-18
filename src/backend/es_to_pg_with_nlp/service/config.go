package service

import (
	"errors"
	"github.com/caarlos0/env/v6"
	"github.com/joho/godotenv"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
	"log"
)

type envVar struct {
	Pgpass string `env:"PGPASSWORD"`
}

func InitLogger() *zap.Logger {
	zapConfig := zap.NewProductionConfig()
	zapConfig.EncoderConfig.LevelKey = "severity"
	zapConfig.EncoderConfig.MessageKey = "message"
	zapConfig.EncoderConfig.EncodeTime = zapcore.RFC3339TimeEncoder

	logger, err := zapConfig.Build(zap.Fields(
		zap.String("projectID", "es_to_pg"),
	))

	if err != nil {
		log.Fatalf("can't initialize zap logger: %v", err)
	}

	return logger
}

func GetPGPass() (*envVar, error) {
	ev := envVar{}
	godotenv.Load()
	if err := env.Parse(&ev); err != nil {
		return nil, err
	} else if ev.Pgpass == "" {
		return nil, errors.New("PGPASSWORD cannot be empty")
	}
	return &ev, nil
}
