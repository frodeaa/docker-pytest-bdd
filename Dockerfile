FROM python:3.7.2-alpine3.7

COPY requirements.txt .

RUN apk --no-cache --update add openssl libffi
RUN apk --no-cache --update add --virtual build-dependencies build-base libffi-dev openssl-dev \
  && pty=False pip3 install --disable-pip-version-check -r requirements.txt \
  && apk del build-dependencies
