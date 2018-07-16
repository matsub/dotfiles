function fish_prompt
    # save last status
    set -l last_status $status

    # set hostname
    test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test $USER = 'root'
    and echo (set_color red)"#"

    # define colors
    set -g base (set_color EFA400)
    set -g ok (set_color 80BB70)
    set -g ng (set_color FF3333)

    # Main
    if [ $last_status -ne 0 ]
        echo -n $ng";_; "
    else
        echo -n $ok"._. "
    end
    echo -n $base(basename $PWD)" "
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end

function fish_right_prompt
    # define colors
    set -g orange (set_color EFA400)
    set -g gray (set_color 303030)
    set -g red (set_color CF4F4F)
    set -g reset_color (set_color normal)

    # Main
    echo -n $orange(__fish_vcs_prompt)
    echo -n $gray' '(date "+%b %H %T")
    #echo -n $red' @'$gray(hostname)
    echo -n $reset_color
end
