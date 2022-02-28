#!/usr/bin/env bash

set -e

image_name="liy36/ubuntu-init"
image_tag="20.04"

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}