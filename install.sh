#!/bin/sh
echo ""
echo "                   _       _    __ _ _                        "
echo "                __| | ___ | |_ / _(_) | ___  ___              "
echo "               / _  |/ _ \| __| |_| | |/ _ \/ __|             "
echo "              | (_| | (_) | |_|  _| | |  __/\__ \             "
echo "             (_)__,_|\___/ \__|_| |_|_|\___||___/             "
echo "======--------------------------------------------------======"

function pick {
    choice=0
    menu=$@
    tail=`expr ${#menu[@]} - 1`

    printf "\e[32mChoose one\e[m\n" >&2
    for _ in $(seq 0 $tail);do echo "" >&2;done

    while true; do
        printf "\e[${#menu[@]}A\e[m" >&2

        for i in $(seq 0 $tail);do
            if [ $choice = $i ]
            then
                printf "\e[1;31m>\e[m \e[1;4m" >&2
            else
                printf "  " >&2
            fi
            printf "${menu[$i]}\e[m\n" >&2
        done

        read -sn1 answer
        if [ "$answer" = "^[" ]; then
            read -sn2 answer
        fi
        case $answer in
            "j"|"[B")
                if [ $choice -lt $tail ]; then choice=`expr $choice + 1`; fi
                ;;
            "k"|"[A")
                if [ $choice -gt 0 ]; then choice=`expr $choice - 1`; fi
                ;;
            "")
                echo $choice
                return
                ;;
        esac
    done
}

# download and move to repo
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

echo "        LICENSE: MIT License Copyright (c) 2018 matsub        "
echo "             Author: matsub <matsub.rk@gmail.com>             "
echo "======--------------------------------------------------======"
echo "        Repository: https://github.com/matsub/dotfiles        "
echo ""

# make a choice
menu=(
"1) Install dotfiles only"
"2) Install dotfiles and its plugin manager"
"3) Install all environments (This will install all applications I use)"
"4) Remove this dotfiles"
"5) Cancel"
)

# get the location of dotfiles dir
repo=`checkin`
echo ""
pushd $repo > /dev/null

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
# change login shell
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
