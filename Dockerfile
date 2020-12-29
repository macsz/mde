FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US:en"
ENV LC_ALL="en_US.UTF-8"
ENV TERM="xterm"
ENV ZSH="$HOME/.oh-my-zsh"

# Setup ZSH as a default shell
RUN apt-get update && \
    apt-get install -y \
        curl \
        git \
        locales \
        locales-all \
        zsh
SHELL ["/usr/bin/zsh", "-c"]

RUN curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true

CMD ["zsh"]
