function fish_prompt
    # save last status
    set -l last_status $status

    # set hostname
    test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test $USER = 'root'
    and echo (set_color red)"#"

    # define colors
    set -g orange (set_color EFA400)
    set -g base (set_color EFA400)
    set -g ok (set_color 80BB70)
    set -g ng (set_color FF3333)

    # Main
    # echo -n (set_color white)(basename (tty))
    if [ $last_status -ne 0 ]
        echo -n $ng";_; "
    else
        echo -n $ok"._. "
    end
    echo -n $base(basename $PWD)$orange(__fish_vcs_prompt) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end
