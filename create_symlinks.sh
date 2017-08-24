#!/bin/bash

dotfiles=(zshrc ackrc bash_profile bash_profile_includes gitconfig gitignore gituserconfig inputrc irbrc rdebugrc gemrc agignore direnvrc)
source=$1

if [ -z $source ]; then
  source=`dirname "$0"`
fi

echo Using dotfiles in directory: $source

cd ~
for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
