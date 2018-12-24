#!/bin/bash

unsafe_chrome()
{
  open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $1 --args --allow-file-access-from-files
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

ws() {
  if [ $# -gt 0 ]; then
    cd ~/workspace/$1
  else
    cd ~/workspace
  fi
}

# Bash custom completion for ws() folder hopping.
# https://askubuntu.com/a/707643/682792
_ws () {
  local cur
  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  k=0
  i="~/workspace" # the directory from where to start
  for j in $( compgen -f "$i/$cur" ); do # loop trough the possible completions
    [ -d "$j" ] && j="${j}/" || j="${j} " # if its a dir add a shlash, else a space
    COMPREPLY[k++]=${j#$i/} # remove the directory prefix from the array
  done
  return 0
}

complete -o nospace -F _ws ws
