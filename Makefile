.PHONY: help build run
.DEFAULT_GOAL := help

build: ## Build
	docker build --pull --tag pkgcloud:latest .

run: ## Run
	docker run -ti pkgcloud:latest bash

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

