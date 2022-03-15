#!/usr/bin/env bash

set -e

image_name="${1}/liy36/ubuntu-init"
image_tag="20.04"

sed -i "1iFROM ${1}/liy36/ubuntu:20.04" Dockerfile
docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
