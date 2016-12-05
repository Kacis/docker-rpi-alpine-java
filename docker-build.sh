#!/bin/sh

set -ex

docker run --rm -it -v "$PWD:/usr/local/workdir/" alpine:3.4 sh /usr/local/workdir/script/build.sh /usr/local/workdir/
docker build -t kacis/docker-rpi-alpine-java .