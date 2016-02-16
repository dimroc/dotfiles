#!/bin/bash

dotfiles=( zshrc ackrc bash_profile bash_profile_includes gitconfig gitignore gituserconfig inputrc irbrc rdebugrc gemrc agignore)
source=$1

if [ -z $source ]; then
  echo "Must pass the directory where the dotfiles live"
  exit 1
fi

for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
