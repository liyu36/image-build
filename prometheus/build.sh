#!/usr/bin/env bash

set -e

image_name="${1}/liy36/prometheus"
image_tag="2.34.0"

sed -i "s/image_tag/${image_tag}/" ./Dockerfile

sed -i "1iFROM ${1}/liy36/alpine:3.15" ./Dockerfile

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
