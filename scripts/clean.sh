#!/usr/bin/env bash
docker stop testprojd
find ./ -type f -name myapp -exec rm {} \;
