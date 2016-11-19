#!/bin/sh

if [ -z $DOTDIR ]; then
    # install git at first
    case `uname` in
        'Darwin')
            curl -f https://raw.githubusercontent.com/matsub/dotfiles/master/brew/install.sh | sh || exit $?
    esac

    # cloning repo
    git clone https://github.com/matsub/dotfiles.git
    pushd dotfiles
else
    # update dotfiles
    pushd $DOTDIR
    git pull origin master:master
fi

python deploy.py

git submodule init
git submodule update

curl -fLo .vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

case `uname` in
    'Darwin')
        pushd brew
        brew bundle
        popd;;
esac

popd

# python
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
