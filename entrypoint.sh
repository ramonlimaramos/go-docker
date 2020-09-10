#!/usr/bin/env bash

set -o pipefail

case $1 in
local-dev)
    echo "Local Dev: Starting CompileDaemon ..."
    CompileDaemon -build='./extras/scripts/compile.sh' -color=true -command='./extras/scripts/execute.sh' 2>&1
  ;;
deploy)
    echo "Deploying Project ..."
  ;;
*)
    echo "Arguments not found to initialize the container"
esac