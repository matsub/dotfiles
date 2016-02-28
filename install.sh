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
    make filter
    {
        echo "export DOTDIR=`pwd`"
        cat .zshenv 
    } | tee .zshenv
else
    # update dotfiles
    pushd $DOTDIR
    git pull origin master:master
fi

python deploy.py

git submodule init
git submodule update

vim -u ~/.vimrc -i NONE -c "try | NeoBundleUpdate! | finally | q! | endtry" -e -s -V1

case `uname` in
    'Darwin')
        pushd brew
        brew bundle
        popd;;
esac

popd
