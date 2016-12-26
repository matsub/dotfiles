#!/bin/sh
function install_brew(){
    echo -n "Password: "
    read -s password
    echo "$password" | sudo -S chown `whoami`:admin /usr/local
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

type brew &> /dev/null || install_brew
