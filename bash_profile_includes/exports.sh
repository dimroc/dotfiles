#!/bin/bash

export TERM=xterm-256color
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
#export LSCOLORS=Exfxcxdxbxegedabagacad
export LSCOLORS=gxfxcxdxbxegedabagacad # Dark lscolor scheme
export HISTCONTROL=erasedups
export GPG_TTY=$(tty)
# Eternal bash history.
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

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

# python
export PYENV_ROOT="$HOME/.pyenv"

# PATH
export PATH=/usr/local/share/npm/bin/:$PATH
export PATH=/usr/local/lib/jsctags:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$PYENV_ROOT/bin:$PATH"
#export PATH=./bin:$PATH # Placed in top level to force last addition
