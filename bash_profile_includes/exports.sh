#!/bin/bash

export TERM=xterm-256color
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
#export LSCOLORS=Exfxcxdxbxegedabagacad
export LSCOLORS=gxfxcxdxbxegedabagacad # Dark lscolor scheme
export HISTCONTROL=ignoredups
export EDITOR=vim
export VISUAL=mvim
# The following were removed because it causes python3 and pip3 to crash.
# Those are needed for tensorflow
# https://github.com/Homebrew/homebrew-core/issues/9229
#export PYTHONPATH=/usr/local/bin/python
#export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export NVM_DIR="$HOME/.nvm"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMAND"

# PATH
export PATH=/usr/local/share/npm/bin/:$PATH
export PATH=/usr/local/lib/jsctags:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=./bin:$PATH
