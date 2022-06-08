#!/bin/sh
set -ex

echo ${INPUT_PASSWORD} | docker login -u ${INPUT_USERNAME} --password-stdin

docker build -t widdix/aws-deployment:${GITHUB_SHA::8} .
docker push widdix/aws-deployment:${GITHUB_SHA::8}
