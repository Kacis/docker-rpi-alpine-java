#!/bin/sh

set -ex

cd $1

export JAVA_VERSION_MAJOR=8
export JAVA_VERSION_MINOR=91
export JAVA_VERSION_BUILD=14

apk add --no-cache ca-certificates
apk add --no-cache curl
mkdir -p /tmp/java
rm -f /tmp/java.tar.gz
curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" -o /tmp/java.tar.gz http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-arm32-vfp-hflt.tar.gz
gunzip /tmp/java.tar.gz
tar -C /tmp/java -xf /tmp/java.tar
mkdir -p /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/
cp -r /tmp/java/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/jre/* /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/COPYRIGHT
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/LICENSE
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/README
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/THIRDPARTYLICENSEREADME.txt
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/Welcome.html
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/jss
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/keytool
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/orbd
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/pack200
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/policytool
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/rmid
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/rmiregistry
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/servertool
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/tnameserv
rm -f /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/bin/unpack200
mkdir -p ./dist/
cp -rf /tmp/java/jre1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/ ./dist/jre/
