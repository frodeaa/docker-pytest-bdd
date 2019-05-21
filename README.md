# docker-pytest-bdd

Testing applications using [pytest-bdd].

Simplify running pytest-bdd in docker/docker-compose.

## Example

use it as base image

    FROM frodeaa/docker-pytest-bdd
    COPY example /example
    WORKDIR /example
    CMD pytest

run with volume mount

    docker run \
      -v $(pwd)/example:/example \
      -w /example \
      frodeaa/docker-pytest-bdd \
        pytest -vv --gherkin-terminal-reporter

## Installed Libraries

The docker image installs many useful libraries
for testing REST APIs with pytest-bdd.

 - [bravado_core]: support for the OpenAPI Specification v2.0. (Swagger 2)
 - [PyJWT]: JSON Web Token implementation in Python
 - [Requests]: HTTP for Humans

See the [requirements.txt] for complete list of libraries installed.

[Dockerfile]: https://github.com/frodeaa/docker-pytest-bdd/blob/master/requirements.txt
[pytest-bdd]: https://pypi.python.org/pypi/pytest-bdd
[bravado_core]: https://github.com/Yelp/bravado-core
[PyJWT]: https://pyjwt.readthedocs.io/en/latest
[Requests]: http://docs.python-requests.org/en/master/
