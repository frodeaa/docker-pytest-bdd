
TAG ?= frodeaa/docker-pytest-bdd
PYTEST_ADDOPTS ?=-vv --gherkin-terminal-reporter --cucumberjson-expanded

build:
	@docker build -t $(TAG) .

test:
	@docker run \
	-e PYTEST_ADDOPTS="$(PYTEST_ADDOPTS)" \
	-v $(CURDIR)/example:/example \
	-w /example $(TAG) \
	pytest

install: build test
