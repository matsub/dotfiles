#!/bin/sh
function install_brew(){
    printf "Password: "
    read -s password
    echo ""
    echo "$password" | sudo -S chown `whoami`:admin /usr/local
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

type brew &> /dev/null || install_brew
