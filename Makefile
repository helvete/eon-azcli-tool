#!/usr/bin/make -f

.PHONY: start
start:
	COMPOSE_DOCKER_CLI_BUILD=1 docker compose up -d

.PHONY: run
run:
	COMPOSE_DOCKER_CLI_BUILD=1 docker compose up --build --force-recreate -d

.PHONY: stop
stop:
	docker compose down

.PHONY: cli
cli:
	docker exec -it azure-bastion bash
