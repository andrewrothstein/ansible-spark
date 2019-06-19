#!/usr/bin/env sh
VER=2.4.3
DIR=~/Downloads
MIRROR=https://archive.apache.org/dist/spark/spark-${VER}

dl()
{
    HADOOP=$1
    URL=${MIRROR}/spark-${VER}-bin-${HADOOP}.tgz.sha512
    printf "# %s\n%s: sha512:%s\n" $URL $HADOOP `curl -sSL $URL | tr -d '\n' | tr -d ' ' | awk -F: '{print $2}'`
}

dl hadoop2.6
dl hadoop2.7


