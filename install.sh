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
source ~/.zshrc


# ============================
#    INSTALL BASIC PACKAGES
# ----------------------------
pushd requirements
sh install.sh
popd

# completed
popd
