#!/usr/bin/env bash

set -eu

./symlink_shared.sh

if [ ! -e "$HOME/.bashrc" ]
then
  ln -s $PWD/config/os_x/bash/bashrc $HOME/.bashrc
else
  echo "$HOME/.bashrc already exists" >&2
fi

if [ ! -e "$HOME/.bash_profile" ]
then
  ln -s $PWD/config/os_x/bash/bash_profile $HOME/.bash_profile
else
  echo "$HOME/.bash_profile already exists" >&2
fi

if [ ! -e "$HOME/.bash_aliases" ]
then
  ln -s $PWD/config/os_x/bash/bash_aliases $HOME/.bash_aliases
else
  echo "$HOME/.bash_aliases already exists" >&2
fi

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
