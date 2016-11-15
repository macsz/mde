#!/bin/sh -x

# NOTE: this script does *not* update local packages
# installed with brew. It is supposed to update lists
# in this directory.

brew list > brew.list
brew cask list > brew.cask.list
brew tap > brew.tap.list
