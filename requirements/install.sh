#!/bin/sh
if [ $(uname) = "Darwin" ];then
    #   macOS
    # =========
    # install Homebrew
    sh brew/install.sh
    # install formulas
    brew brew/bundle
fi

#   vim-plug
# ------------
if type vim > /dev/null 2>&1; then
    # download
    curl -fLo .vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # install
    vim +PlugInstall +qall
fi

#   anyenv
# ----------
if type anyenv > /dev/null 2>&1; then
    anyenv install pyenv
    anyenv install rbenv

    eval "$(anyenv init -)"
    # pyenv-virtualenv
    git clone https://github.com/yyuu/pyenv-virtualenv.git \
        $(pyenv root)/plugins/pyenv-virtualenv
fi
