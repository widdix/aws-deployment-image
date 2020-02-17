#!/bin/bash
set -ex

echo "test"

echo ${INPUT_PASSWORD} | docker login -u ${INPUT_USERNAME} --password-stdin

GIT_HASH=$(git rev-parse --short "$GITHUB_SHA")

docker build -t widdix/aws-deployment:$GIT_HASH
docker push widdix/aws-deployment:$GIT_HASH
