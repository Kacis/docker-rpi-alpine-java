#!/bin/sh

set -ex

docker run --rm -it -v "$PWD:/usr/local/workdir/" ctarwater/armhf-alpine-rpi-base sh /usr/local/workdir/script/build.sh /usr/local/workdir/
docker build -t docker-rpi-alpine-java .