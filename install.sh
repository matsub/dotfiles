#!/bin/sh
source lib/pick.sh
source lib/checkin.sh
source lib/title.sh

# get the location of dotfiles dir
repo=`checkin`
echo ""
pushd $repo > /dev/null


# make a choice
menu=(
"1) Install dotfiles only"
"2) Install dotfiles and its plugin manager"
"3) Install all environments (This will install all applications I use)"
"4) Remove this dotfiles"
"5) Cancel"
)

choice=`pick $menu`
echo ""
case $choice in
    0) # Install dotfiles only
        make dotfiles
        ;;
    1) # Install dotfiles and its plugin manager
        make environment
        ;;
    2) # Install all environments
        make all
        ;;
    3) # Remove this dotfiles
        make clean
        popd > /dev/null
        ;;
    4) # Cancel
        popd > /dev/null
        exit
        ;;
esac


# completed!
# change login shell to zsh
echo ""
printf "\e[1m"
echo " Install completed!"
echo "===================="
printf "\e[m"
echo "please change login shell with:"
echo "  chsh -s /bin/zsh"
echo "or add /use/local/bin/fish to /etc/shells and:"
echo "  chsh -s /use/local/bin/fish"
echo ""

# back to initial path
popd > /dev/null
