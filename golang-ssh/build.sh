#!/usr/bin/env bash

set -e

image_name="${1}/liy36/golang-ssh"
image_tag="1.18"

sed -i "s/image_tag/${image_tag}/" ./Dockerfile
sed -i "1iFROM ${1}/liy36/ubuntu:20.04" ./Dockerfile

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
