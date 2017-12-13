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
echo "export DOTDIR=`pwd`" >> .zshrc

echo "Install completed!"
echo "please change login shell to zsh with:"
echo "  chsh -s /bin/zsh"

# completed
popd
