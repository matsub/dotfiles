#!/bin/sh

if [ -z $DOTDIR ]; then
    # install package manager at first
    case `uname` in
        'Darwin')
            curl -f https://raw.githubusercontent.com/matsub/dotfiles/master/requirements/brew/install.sh | sh || exit $?
    esac

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
case `uname` in
    'Darwin')
        pushd requirements/brew
        brew bundle
        popd
esac

curl -fLo .vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# INSTALL **env
# --------------
anyenv install pyenv
anyenv install rbenv
# pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git \
    $(anyenv root)/envs/pyenv/plugins/pyenv-virtualenv

popd
