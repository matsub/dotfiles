#!/bin/sh
pushd env
if [ $(uname) = "Darwin" ];then
    #   macOS
    # =========
    # install Homebrew
    sh brew/install.sh
    # install formulas
    pushd brew
    brew bundle
    popd
fi

#  Go tools
# -----------
if type go &> /dev/null; then
    go get -u github.com/golang/dep/cmd/dep
    go get -u github.com/motemen/ghq
fi

#  fisherman
# -----------
if type fish &> /dev/null; then
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fi

#  neovim-plug
# -------------
if type nvim &> /dev/null; then
    # download
    curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # install
    nvim +PlugInstall +qa
fi
popd
