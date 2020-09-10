#!/bin/bash

set -e

echo "Compiling ..."

go build -o ./bin/go-docker ./main.go

#./scripts/test.sh 'local'