#! /usr/bin/env bash

docker container kill devenv || true
docker container rm devenv || true

