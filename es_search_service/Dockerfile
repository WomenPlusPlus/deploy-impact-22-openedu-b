FROM golang:alpine as builder
LABEL maintainer="mstihomirova@gmail.com"

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build -v ./cmd/es_search_service

EXPOSE 8087
ENTRYPOINT ["./es_search_service"]