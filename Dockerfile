FROM ctarwater/armhf-alpine-rpi-glibc

MAINTAINER Milan Kacalek <kacis.m@gmail.com>

ENV PATH=${PATH}:/opt/jre/bin

ADD dist/ /opt/