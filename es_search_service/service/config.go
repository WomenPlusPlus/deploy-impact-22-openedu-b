package service

import (
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
		zap.String("projectID", "pg_to_es"),
	))

	if err != nil {
		log.Fatalf("can't initialize zap logger: %v", err)
	}

	return logger
}
