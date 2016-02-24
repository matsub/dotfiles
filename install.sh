#!/bin/sh
if [ -d dotfiles ]; then
    pushd dotfiles
    git pull origin master:master
else
    git clone https://github.com/matsub/dotfiles.git
    pushd dotfiles
fi

python deploy.py

git submodule init
git submodule update

vim -u ~/.vimrc -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e -s -V1

if [ `uname` = 'Darwin' ]; then
    pushd brew
    sh install.sh
    popd
fi

popd
