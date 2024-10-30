#!/bin/sh -x

# Param (optional): directory that contains git related files

get_abs_filename() {
    echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ -z ${1+x} ];
then
    DIR='.'
else
    DIR=$1
fi

ln -s $(get_abs_filename "$DIR/zshrc")  ~/.zshrc


