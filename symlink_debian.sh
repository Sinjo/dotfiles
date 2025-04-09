#!/usr/bin/env bash

set -eu

./symlink_shared.sh

if [ ! -e "$HOME/.xprofile" ]
then
  ln -s $PWD/config/debian/xorg/xprofile $HOME/.xprofile
else
  echo "$HOME/.xprofile already exists" >&2
fi
