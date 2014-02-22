#!/bin/zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git rails ruby brew git-extras)

source $ZSH/oh-my-zsh.sh

setopt autopushd
unsetopt correct_all
unsetopt share_history

# Customize to your needs...
export LSCOLORS=gxfxcxdxbxegedabagacad # Dark lscolor scheme
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/bin:$PATH
export PATH=~/bin/elastic-mapreduce-ruby:$PATH

alias o='open'
alias ll="ls -lAh"
alias grep='grep -H -n'
alias pcurl='curl --proxy localhost:8888'
alias rmquarantine='xattr -d com.apple.quarantine'
alias stop='kill -2'
alias shutupvim="rm /var/tmp/*.sw*"
alias gemdoc='gem environment gemdir'/doc
alias untar="tar -xvf"
alias be="bundle exec"

unsafe_chrome() {
  open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $1 --args --allow-file-access-from-files
}
autoload unsafe_chrome

source ~/.bash_profile_includes/aliases.sh
source ~/.bash_profile_includes/rvm.sh

if [[ -a "$HOME/.bash_profile_includes/local.sh" ]]; then
  source ~/.bash_profile_includes/local.sh
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
