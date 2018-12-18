#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [[ "$machine" == "Mac" ]]; then
    bin/prbuildstub-osx
fi

if [[ "$machine" == "Linux" ]]; then
    bin/prbuildstub-linux
fi
