#!/usr/bin/env bash

set -e

image_name="${1}/liy36/alpine"
image_tag="3.15"

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
