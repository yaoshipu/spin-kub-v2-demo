#!/bin/bash

set -ex

## 编译镜像

version=$1

if [ $# = 0 ];then
    echo "version must provide. example: ./publish.sh 1.0.0"
    exit 1
fi

docker build --rm=true -t reg.qiniu.com/spock-resources/spin-kub-v2-demo:$version -f Dockerfile .

docker push reg.qiniu.com/spock-resources/spin-kub-v2-demo:$version

