all: help

.PHONY: init
init: ## Initialize environment
	docker compose build

.PHONY: database-up
database-up: ## Run docker compose up db
	docker compose up db

.PHONY: migrate
migrate: ## db migrate
	docker compose run --rm migrate

.PHONY: server-up
server-up: ## Run docker compose up
	docker compose up

.PHONY: server-upbg
server-upd: ## Run docker compose up -d
	docker compose up -d

.PHONY: server-down
server-down: ## Run docker compose down
	docker compose down

.PHONY: bash
bash: ## Run bash in server container
	docker compose run --rm server bash

.PHONY: generate
generate: ## Run go generate ./...
	docker compose run --rm server go generate ./...

.PHONY: all-clean
all-clean:
	docker compose down --rmi all --volumes --remove-orphans

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk -F':.*?## ' '{printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'
