#!/usr/bin/env bash

set -eu

./symlink_shared.sh

if [ ! -e "$HOME/.config/awesome/rc.lua" ]
then
  mkdir -p $HOME/.config/awesome
  ln -s $PWD/config/ubuntu/awesome/rc.lua $HOME/.config/awesome/rc.lua
else
  echo "$HOME/.config/awesome/rc.lua already exists" >&2
fi

if [ ! -e "$HOME/.xsessionrc" ]
then
  ln -s $PWD/config/ubuntu/xorg/xsessionrc $HOME/.xsessionrc
else
  echo "$HOME/.xsessionrc already exists" >&2
fi
