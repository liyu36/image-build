#!/usr/bin/env bash

set -e

image_name="liy36/golang"
image_tag="1.16.15"

sed -i "s/image_tag/${image_tag}/" ./Dockerfile

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
