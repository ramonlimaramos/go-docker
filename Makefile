## install: git hooks, go binaries, dependency checks
install:
	@bash -c "./extras/scripts/install.sh"

## start: start development environment
start: stop build
	@bash -c "./extras/scripts/start.sh"

## stop: stop development environment
stop:
	@bash -c "./extras/scripts/stop.sh"

## test: run test suite, to run on local host system; make test local
test:
	@bash -c "./extras/scripts/test.sh" $@

## build: build docker containers
build:
	@bash -c "./extras/scripts/build.sh"

## logs: logging all services, will tail output
logs:
	@bash -c "./extras/scripts/logs.sh"

## attach: attach to the running container 
attach:
	@bash -c "./extras/scripts/attach.sh"

## lint: run linters against code boase
lint:
	@bash -c "./extras/scripts/lint.sh"