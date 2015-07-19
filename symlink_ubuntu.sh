#!/usr/bin/env bash

if [ ! -e "$HOME/.config/awesome/rc.lua" ]
then
  ln -s $PWD/config/ubuntu/awesome/rc.lua $HOME/.config/awesome/rc.lua
else
  echo "$HOME/.config/awesome/rc.lua already exists" >&2
fi
