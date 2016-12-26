#!/bin/sh

if [ -z $DOTDIR ]; then
    # cloning repo
    git clone https://github.com/matsub/dotfiles.git
    pushd dotfiles
else
    # update dotfiles
    pushd $DOTDIR
    git pull origin master:master
fi

git submodule init
git submodule update

python deploy.py
ln -s ~/.zshrc .zshrc


# ============================
#    INSTALL BASIC PACKAGES
# ----------------------------
git checkout $(uname)
sh requirements/install.sh
sh requirements/plugin.sh
popd
