#!/bin/bash -x

brew install `cat brew.list | xargs`
brew cask install `cat brew.cask.list | xargs`
brew tap `cat brew.tap.list | xargs`
