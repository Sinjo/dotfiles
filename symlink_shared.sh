#!/usr/bin/env bash

set -eu

if [ ! -e "$HOME/.gitconfig" ]
then
  ln -s $PWD/config/shared/git/gitconfig $HOME/.gitconfig
else
  echo "$HOME/.gitconfig already exists" >&2
fi

if [ ! -e "$HOME/.git_author" ]
then
  ln -s $PWD/config/shared/git/git_author $HOME/.git_author
else
  echo "$HOME/.git_author already exists" >&2
fi

if [ ! -e "$HOME/.gitignore_global" ]
then
  ln -s $PWD/config/shared/git/gitignore_global $HOME/.gitignore_global
else
  echo "$HOME/.gitignore_global already exists" >&2
fi

if [ ! -e "$HOME/.bundle/config" ]
then
  mkdir -p $HOME/.bundle
  ln -s $PWD/config/shared/bundler/config $HOME/.bundle/config
else
  echo "$HOME/.bundle/config already exists" >&2
fi

if [ ! -e "$HOME/.bashrc" ]
then
  ln -s $PWD/config/shared/bash/bashrc $HOME/.bashrc
else
  echo "$HOME/.bashrc already exists" >&2
fi

if [ ! -e "$HOME/.bash_profile" ]
then
  ln -s $PWD/config/shared/bash/bash_profile $HOME/.bash_profile
else
  echo "$HOME/.bash_profile already exists" >&2
fi

if [ ! -e "$HOME/.bash_aliases" ]
then
  ln -s $PWD/config/shared/bash/bash_aliases $HOME/.bash_aliases
else
  echo "$HOME/.bash_aliases already exists" >&2
fi

if [ ! -e "$HOME/.config/kitty/kitty.conf" ]
then
  mkdir -p $HOME/.config/kitty/
  ln -s $PWD/config/shared/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
else
  echo "$HOME/.config/kitty/kitty.conf already exists" >&2
fi
