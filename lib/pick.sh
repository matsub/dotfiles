#/bin/sh
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
