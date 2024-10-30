#!/bin/sh -x

# NOTE: this script does *not* update local packages
# installed with brew. It is supposed to update lists
# in this directory.
#
# Param (optional): directory that contains list of brew packages and casks

if [ -z ${1+x} ];
then
    DIR='.'
else
    DIR=$1
fi

brew list > $DIR/brew.list
brew cask list > $DIR/brew.cask.list
brew tap > $DIR/brew.tap.list
