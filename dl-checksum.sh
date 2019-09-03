#!/usr/bin/env sh
VER=${1:-2.4.4}
DIR=~/Downloads
MIRROR=https://archive.apache.org/dist/spark/spark-${VER}

dl()
{
    HADOOP=$1
    URL=${MIRROR}/spark-${VER}-bin-${HADOOP}.tgz.sha512
    printf "    # %s\n" $URL
    printf "    %s: sha512:%s\n" $HADOOP `curl -sSL $URL | tr -d '\n' | tr -d ' ' | awk -F: '{print $2}'`
}

printf "  '%s':\n" $VER
dl hadoop2.6
dl hadoop2.7


