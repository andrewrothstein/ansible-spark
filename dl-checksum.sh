#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://archive.apache.org/dist/spark

dl()
{
    local ver=$1
    local hadoop_ver=$2
    local url=${MIRROR}/spark-${ver}/spark-${ver}-bin-${hadoop_ver}.tgz.sha512
    printf "    # %s\n" $url
    printf "    %s: sha512:%s\n" $hadoop_ver $(curl -sSL $url | tr -d '\n' | tr -d ' ' | awk -F: '{print $2}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver hadoop2.7
    dl $ver hadoop3.2
    dl $ver without-hadoop
}

dl_ver ${1:-3.1.2}
