#! /usr/bin/env bash

docker build \
    --build-arg HTTP_PROXY=$HTTP_PROXY \
    --build-arg http_proxy=$http_proxy \
    --build-arg HTTPS_PROXY=$HTTPS_PROXY \
    --build-arg https_proxy=$https_proxy \
    --build-arg FTP_PROXY=$FTP_PROXY \
    --build-arg ftp_proxy=$ftp_proxy \
    --build-arg NO_PROXY=$NO_PROXY \
    --build-arg no_proxy=$no_proxy \
    --build-arg SOCKS_PROXY=$SOCKS_PROXY \
    --build-arg socks_proxy=$socks_proxy \
    -t macsz/dev \
    .
