#!/usr/bin/env zsh

docker build -t toolkit .
docker image tag toolkit megapead/personal-toolkit:latest
docker image push megapead/personal-toolkit:latest
