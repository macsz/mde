#! /usr/bin/env bash

code-server \
    --bind-addr 0.0.0.0:8080 \
    &

sleep 1
cat /root/.config/code-server/config.yaml | grep password:
zsh


