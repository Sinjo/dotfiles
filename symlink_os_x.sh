#!/usr/bin/env bash

set -eu

./symlink_shared.sh

if [ ! -e "$HOME/.bashrc" ]
then
  ln -s $PWD/config/os_x/bash/bashrc $HOME/.bashrc
else
  echo "$HOME/.bashrc already exists" >&2
fi
