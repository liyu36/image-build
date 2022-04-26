#!/usr/bin/env bash

set -e

image_name="${1}/liy36/yearning"
image_tag="3.0.0"

sed -i "1iFROM ${1}/liy36/alpine:3.15" ./Dockerfile

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
