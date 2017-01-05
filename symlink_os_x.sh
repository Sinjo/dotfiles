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
