#!/bin/bash

export TERM=xterm-256color
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=Exfxcxdxbxegedabagacad
# export LSCOLORS=gxfxcxdxbxegedabagacad # Dark lscolor scheme
export HISTCONTROL=ignoredups
export EDITOR=mvim

# PATH
export PATH=./node_modules/.bin:$PATH
export PATH=/usr/local/lib/jsctags:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH