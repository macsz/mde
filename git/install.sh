#!/bin/sh -x

# NOTE: this script does *not* install git.
# It just sets configs etc.
#
# Param (optional): directory that contains git related files

get_abs_filename() {
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

if [ -z ${1+x} ];
then
    DIR='.'
else
    DIR=$1
fi

ln -s $(get_abs_filename "$DIR/gitignore")  ~/.gitignore
