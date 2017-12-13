#!/bin/sh
if [ -z $DOTDIR ]; then
    # cloning repo
    git clone https://github.com/matsub/dotfiles.git
    pushd dotfiles
else
    # update dotfiles
    pushd $DOTDIR
    git pull origin master
fi

git submodule init
git submodule update

python deploy.py


# ============================
#    INSTALL BASIC PACKAGES
# ----------------------------
pushd requirements
sh install.sh
popd


# change login shell to zsh
chsh -s /bin/zsh
echo "export DOTDIR=`pwd`" >> .zshrc


# completed
popd
