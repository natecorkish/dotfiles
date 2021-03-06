#!/usr/bin/env bash

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update


# Move old .zshrc
mv ~/.zshrc ~/.zshrc.old

# folders that should, or only need to be installed for a local user
useronly=(
    bin
    vim
    git
    aliases
    zsh
)

# run the stow command for the passed in directory ($2) in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install apps available to local users and root
for app in ${base[@]}; do
    stowit "${HOME}" $app
done

# install only user space folders
for app in ${useronly[@]}; do
    if [ "$EUID" -ne 0 ]; then
        stowit "${HOME}" $app
    fi
done

echo ""
echo "##### ALL DONE"
