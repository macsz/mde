FROM nvidia/cuda:10.0-base

ARG DEBIAN_FRONTEND=noninteractive

ARG HTTP_PROXY=""
ARG http_proxy=""
ARG HTTPS_PROXY=""
ARG https_proxy=""
ARG FTP_PROXY=""
ARG ftp_proxy=""
ARG NO_PROXY=""
ARG no_proxy=""
ARG SOCKS_PROXY=""
ARG socks_proxy=""


ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US:en"
ENV LC_ALL="en_US.UTF-8"
ENV TERM="xterm"
ENV ZSH="$HOME/.oh-my-zsh"

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

# Setup ZSH as a default shell
RUN apt-get update \
    && apt-get install -y \
        locales \
        locales-all \
    && apt-get install -y \
        curl \
        git \
        wget \
        zsh \
    && locale-gen en_US.UTF-8
SHELL ["/usr/bin/zsh", "-c"]

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh

RUN curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true

# Setup VS Code
RUN curl -fsSL https://code-server.dev/install.sh | zsh

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
EXPOSE 8080

CMD [ "zsh" ]
