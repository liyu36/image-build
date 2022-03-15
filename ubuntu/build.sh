#!/usr/bin/env bash

set -e

image_name="${1}/liy36/ubuntu"
image_tag="20.04"

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
