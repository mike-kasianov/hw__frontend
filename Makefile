PROJECT_NAME := frontend

DEV_DOCKER_COMPOSE_PATH_PARAMS = -f ./docker/dev/docker-compose.yml
TEST_DOCKER_COMPOSE_PATH_PARAMS = -f ./docker/test/docker-compose.yml

DOCKER_COMPOSE_SERVICE := main

DOCKER_IMAGE := hello-world.$(PROJECT_NAME)_image
DOCKER_CONTAINER := hello-world.$(PROJECT_NAME)_container

HOST_USER ?= $(strip $(if $(USER),$(USER),nodummy))
HOST_UID ?= $(strip  $(shell id -u))
HOST_GUID ?= $(strip $(shell id -g))


# export such that its passed to shell functions for Docker to pick up.
export PROJECT_NAME
export HOST_USER
export HOST_UID
export HOST_GUID
export DOCKER_IMAGE
export DOCKER_CONTAINER

# all our targets are phony (no files to check).
.PHONY: build rebuild service stop login ps

build:
	docker-compose $(DEV_DOCKER_COMPOSE_PATH_PARAMS) build $(DOCKER_COMPOSE_SERVICE)

rebuild:
	# force a rebuild by passing --no-cache
	docker-compose $(DEV_DOCKER_COMPOSE_PATH_PARAMS) build --no-cache $(DOCKER_COMPOSE_SERVICE)

service:
	docker-compose $(DEV_DOCKER_COMPOSE_PATH_PARAMS) -p $(PROJECT_NAME) up $(DOCKER_COMPOSE_SERVICE)

stop:
	docker-compose $(DEV_DOCKER_COMPOSE_PATH_PARAMS) -p $(PROJECT_NAME) stop

login:
	docker exec -it $(DOCKER_CONTAINER) /bin/bash

login_as_root:
	docker exec -u root -w / -it $(DOCKER_CONTAINER) /bin/bash

ps:
	docker-compose $(DEV_DOCKER_COMPOSE_PATH_PARAMS) -p $(PROJECT_NAME) ps

test_inside_docker:
	docker-compose $(TEST_DOCKER_COMPOSE_PATH_PARAMS) -p $(PROJECT_NAME)_test up $(DOCKER_COMPOSE_SERVICE)