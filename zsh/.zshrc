export PATH="$PATH:$HOME/.composer/vendor/bin"
export DOT=$HOME/code/dotfiles

source $HOME/.aliases.d/.aliases
source $HOME/.aliases.d/.git-functions

# Directory completion
autoload -Uz compinit
compinit

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

# Directories
setopt globdots
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
setopt auto_menu      
setopt complete_in_word
setopt always_to_end
setopt auto_cd
setopt multios
setopt prompt_subst

unsetopt menu_complete
unsetopt flowcontrol

