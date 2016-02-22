#!/bin/sh

if [[ -e .dotfiles ]]; then
    git clone https://github.com/matsub/.dotfiles.git
    pushd .dotfiles
else
    pushd .dotfiles
    git pull origin master:master
fi

python deploy.py

git submodule init
git submodule update

vim -u ~/.vimrc -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e -s -V1

popd
