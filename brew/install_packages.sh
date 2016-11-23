#!/bin/bash -x

# Param (optional): directory that contains list of brew packages and casks

if [ -z ${1+x} ];
then
    DIR='.'
else
    DIR=$1
fi

brew tap `cat $DIR/brew.tap.list | xargs`
brew install `cat $DIR/brew.list | xargs`
brew cask install `cat $DIR/brew.cask.list | xargs`
