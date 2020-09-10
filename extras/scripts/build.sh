#!/bin/bash

set -e

source "./extras/scripts/console.sh"

VERSION=latest

ENV="${ENVIRONMENT}"
[[ -z "${ENV}" ]] && ENV="DEVELOPMENT"
ENV=$(echo "${ENV}" | tr '[:upper:]' '[:lower:]')

info "Building with git sha ${VERSION}"

TAG="go-docker:${VERSION}"
docker build -f extras/docker/Dockerfile."${ENV}" -t "${TAG}" .
info "Tagged ${TAG}"