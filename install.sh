#!/bin/sh

function osname(){
case `uname | lower` in
    *'linux'*) OSIS='linux';;
    *'darwin'*) OSIS='darwin';;
    *'bsd'*) OSIS='bsd';;
    *) OSIS='unknown';;
esac
}

if [[ -e ~/.dotfiles ]]; then
    git clone https://github.com/matsub/.dotfiles.git ~/.dotfiles
    pushd ~/.dotfiles
else
    pushd ~/.dotfiles
    git pull origin master:master
fi

python3 deploy.py

git submodule init
git submodule update

vim -u ~/.vimrc -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e -s -V1


popd
