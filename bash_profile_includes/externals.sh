#!/bin/bash

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

# Added by direnv
eval "$(direnv hook bash)"

# nvm
. "$(brew --prefix nvm)/nvm.sh"

#fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#rust
export PATH="$HOME/.cargo/bin:$PATH"

#iterm2
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#gcloud
pathcompletion='/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
[ -f $pathcompletion ] && source "$pathcompletion"
bashcompletion='/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
[ -f $bashcompletion ] && source "$bashcompletion"

# bash git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

#pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
