#!/bin/sh

function checkin {
    if [ -z $MDOTDIR ]; then
        # cloning repo
        git clone --depth 1 https://github.com/matsub/dotfiles.git
        echo dotfiles
    else
        # update dotfiles
        echo $MDOTDIR
    fi
}
