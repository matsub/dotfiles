#!/bin/sh
source lib/pick.sh
source lib/title.sh

menu=(
"1) Install dotfiles only"
"2) Install dotfiles and its plugin manager"
"3) Install all environments (This will install all applications I use)"
"4) Remove this dotfiles"
"5) Cancel"
)

choice=`pick $menu`


if [ -z $MDOTDIR ]; then
    # cloning repo
    git clone --depth 1 https://github.com/matsub/dotfiles.git
    pushd dotfiles
else
    # update dotfiles
    pushd $MDOTDIR
fi


# change login shell to zsh
echo "Install completed!"
echo "please change login shell to zsh with:"
echo "  chsh -s /bin/zsh"
echo "or"
echo "  chsh -s /bin/fish"

# completed
popd
