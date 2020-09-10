#!/bin/bash

# Ensure no zombied/lingering pids are arround
pids=$(pgrep go-docker)
[[ -z "${pids}" ]] || kill -9 "${pids}"

# Executes the binary
./bin/go-docker