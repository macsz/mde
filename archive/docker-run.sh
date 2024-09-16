#! /usr/bin/env bash

docker run \
    -p 8080:8080 \
    -p 8888:8888 \
    -p 8097:8097 \
    -v /localdisk/maciej/ws/:/data/ \
    --name devenv \
    --hostname devenv \
    --restart unless-stopped \
    -tdi macsz/dev

sleep 1
echo VSCode $(docker logs devenv | grep password:)

