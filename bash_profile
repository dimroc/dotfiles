#!/bin/bash

# Additions to bash should be placed into ~/.bash_profile_includes with a .sh extension

for file in ~/.bash_profile_includes/*.sh; do
  [[ -r $file ]] && source $file;
done

export PATH=./bin:$PATH # Placed in top level to force last addition

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


export PATH="$HOME/.cargo/bin:$PATH"
