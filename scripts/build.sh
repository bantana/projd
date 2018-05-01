#!/usr/bin/env bash
GOOS="linux" GOARCH="amd64" CGO_ENABLED="0" go build -o myapp cmd/main.go
docker build . -t projd
