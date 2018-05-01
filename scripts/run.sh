#!/usr/bin/env bash
docker run -it -d --rm -p 8000:8000 --hostname testprojd --name testprojd projd
echo "curl -i -v http://localhost:8000"
curl -i -v http://localhost:8000
