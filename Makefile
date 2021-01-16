
TAG ?= frodeaa/docker-pytest-bdd
PYTEST_OPTS ?=-vv --gherkin-terminal-reporter --cucumberjson-expanded


build:
	@docker build -t $(TAG) .

test:
	@docker run \
	-v $(CURDIR)/example:/example \
	-w /example $(TAG) \
	pytest $(PYTEST_OPTS)

install: build test
