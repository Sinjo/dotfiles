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
