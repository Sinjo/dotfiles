#!/usr/bin/env bash

set -eu

./symlink_shared.sh

if [ ! -e "$HOME/.iterm" ]
then
  ln -s $PWD/config/os_x/iterm $HOME/.iterm
else
  echo "$HOME/.iterm already exists" >&2
fi

if [ ! -e "$HOME/Library/Colors/Sinjo.clr" ]
then
  mkdir -p $HOME/Library/Colors
  cp $PWD/config/os_x/colors/Sinjo.clr $HOME/Library/Colors/Sinjo.clr
else
  (cmp --quiet $HOME/Library/Colors/Sinjo.clr $PWD/config/os_x/colors/Sinjo.clr &&
    echo "$HOME/Library/Colors/Sinjo.clr already exists" >&2) ||
    echo "$HOME/Library/Colors/Sinjo.clr differs from $PWD/config/os_x/colors/Sinjo.clr, update either repo or Library version"
fi
