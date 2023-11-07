include .env
export $(shell sed 's/=.*//' .env)

ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
.RECIPEPREFIX = >

ifeq (env,$(firstword $(MAKECMDGOALS)))
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(RUN_ARGS):;@:)
endif

with-env:
> $(RUN_ARGS)

migration-up:
> refinery migrate -e DATABASE_URI -p ./migrations

start-backend:
> cd packages/backend && \
> node .

build-backend:
> cd packages/backend && \
> pnpm tsup --clean ./src/main.ts

dev-backend: 
> pnpm nodemon -w ./packages/backend/src -e 'ts' -x 'make build-backend && (make start-backend | pino-pretty)'

install-node-deps:
> pnpm i

install-rust-deps:
> cargo install refinery_cli --no-default-features -F postgresql

fresh-install: install-node-deps install-rust-deps

.PHONY: with-env migration-up start-backend build-backend dev-backend fresh-install