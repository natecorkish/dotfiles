export PATH="$PATH:$HOME/.composer/vendor/bin"
export DOT=$HOME/code/dotfiles

# load aliases
for file in $HOME/.aliases.d/*; do 
    source "$file"
done

# load plugins
for file in $HOME/.zsh/.plugins/*; do
    source "$file"
done

# Install theme
source $HOME/.zsh/.themes.d/oxide.theme

# Directory completion
autoload -Uz compinit
compinit

setopt globdots
setopt auto_menu      
setopt complete_in_word
setopt always_to_end
setopt auto_cd
setopt multios
setopt prompt_subst

unsetopt menu_complete
unsetopt flowcontrol

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
