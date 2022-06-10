#!/usr/bin/env bash

set -e

image_name="${1}/liy36/yearning"
image_tag="3.0.0"

sed -i "s/image_tag/${image_tag}/" ./Dockerfile

sed -i "1iFROM ${1}/liy36/alpine:3.15" ./Dockerfile

YEARNING_URL="https://github.com/cookieY/Yearning/releases/download/v3.0.0-rc12/Yearning-v3.0.0-rc12-linux-amd64.zip"
wget -cO yearning.zip ${YEARNING_URL} && \
    unzip yearning.zip
pwd ;ls 

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}

