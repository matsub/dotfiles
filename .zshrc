# path
# thanks http://qiita.com/mollifier/items/6fdeff2750fe80f830c8
fpath=(
$HOME/.zsh/functions/
$HOME/.zsh/plugins/zsh-completions/src
$fpath
)
typeset -U path cdpath fpath manpath

# complete
autoload -U compinit
compinit -u

setopt hist_expand
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' verbose yes


# encoding
export LANG=ja_JP.UTF-8


# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=512
SAVEHIST=512
setopt hist_ignore_dups
setopt share_history


# HISTORY SHORT CUT
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '' history-beginning-search-backward-end
bindkey '' history-beginning-search-forward-end


# color
autoload colors
# dir simlink sock que exec block char uid gid sticky unwritable
# a:black b:red c:green d:brown e:blue f:magenta g:cyan h:white x:none
export LSCOLORS=cxfxdxgfbxfxfxdxDxxBxB

# PROMPT
if [ -n "$VIMRUNTIME" ];
then
    PROMPT='%K{black}%n@vim %.%k $ '
else
    PROMPT='%F{yellow}%n %.%f $ '
fi
PROMPT2='%_ ... '
RPROMPT='%1(v|%F{yellow}%1v%f|) %(?, %F{yellow}, %F{red})%*%f'
SPROMPT='%r is correct? [n, y, a, e]: '


# browsing
setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt nolistbeep
setopt nobeep
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors $LSCOLORS


# VCS
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%b)' # %b: branch information
zstyle ':vcs_info:*' actionformats '(%b|%a)' # %a: action information
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}


# alias
alias vi="vim"
alias ll="ls -lG"
alias la="ls -laG"
alias l="ls -lG"
alias py="python3"
alias pip="pip3"
alias gcc="/opt/homebrew/bin/gcc-5"
alias dict="python3 ~/Code/sandbox/dictionary/dictionary.py"

# routine
function emacs() {
    echo -n "Are you sure? [y/n]: "
    read ans
    if [[ ! $ans =~ [yY] ]]; then
        echo "OK. It's cool."
        return;
    fi

    echo -n "Would you like to open it with vi?[y/n]: "
    read ans
    if [[ $ans =~ [yY] ]]; then
        vi $@
        return;
    fi

    echo -n "Another editor? How about nano?[y/n]: "
    read ans
    if [[ $ans =~ [yY] ]]; then
        nano $@
    else
        /usr/bin/emacs $@
    fi
}


# texmod


# auto-fu
source $HOME/.zsh/plugins/auto-fu.zsh/auto-fu.zsh
function zle-line-init () {
    auto-fu-init
}
zle -N zle-line-init
# hide "-azfu-"
zstyle ':auto-fu:var' postdisplay $''
