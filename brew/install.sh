#!/bin/sh
function install_brew(){
echo -n "Password: "
read -s password
echo "$password" | sudo -S mkdir -p /opt/homebrew
echo "$password" | sudo -S chown `whoami`:staff /opt/homebrew
curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C /opt/homebrew
}

type brew &> /dev/null || install_brew

brew bundle
