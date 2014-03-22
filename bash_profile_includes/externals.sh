#!/bin/bash

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# added by travis gem
[ -f "$HOME/.travis/travis.sh" ] && . "$HOME/.travis/travis.sh"
