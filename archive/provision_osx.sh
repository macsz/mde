#!/bin/bash -x

xcode-select --install

# install brew and selected packages using it
./brew/install.sh
./brew/install_packages.sh brew

# install OhMyZSH
./zsh/install.sh zsh

# configure git
./git/install.sh git
