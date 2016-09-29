export ZDOTDIR=$HOME/.zsh
# ==========
#    PATH
# ----------
fpath=(
$ZDOTDIR/functions/
$ZDOTDIR/plugins/zsh-completions/src
$fpath
)
typeset -U path cdpath fpath manpath
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# ================
#    COMPLETION
# ----------------
autoload -U compinit
compinit -u

setopt hist_expand
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_no_store
setopt hist_verify
setopt share_history
setopt append_history
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' verbose yes


# ==================
#    ENVIRONMENTS
#-------------------
# encoding
export LANG=ja_JP.UTF-8

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=500
setopt hist_ignore_dups
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '' history-beginning-search-backward-end
bindkey '' history-beginning-search-forward-end

# color
autoload colors
# dir simlink sock que exec block char uid gid sticky unwritable
# a:black b:red c:green d:brown e:blue f:magenta g:cyan h:white x:none
# uppercase to bold
export LSCOLORS=cxfxdxgfbxfxfxdxDxxBxB

# PROMPT
setopt prompt_subst
source $ZDOTDIR/plugins/zsh-python-prompt/zshrc.zsh
zstyle ':zsh-python-prompt:pyenv:' symbol ''
PROMPT='%F{yellow}%n %.%f $ '
PROMPT2='%_ ... '
RPROMPT='%1(v|%F{yellow}%1v%f|)'
RPROMPT+=' %y%F{cyan}@%f%(?,%F{green},%F{red})%m%f'
RPROMPT+=' [%f%F{blue}${ZSH_PYTHON_PROMPT}%f]'
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

# keybinds
bindkey '' forward-word
bindkey '' backward-word


# ===========
#    ALIAS
# -----------
alias vi="vim"
alias ll="ls -lG"
alias la="ls -lGa"
alias l="ls -lG"
alias py="python"
alias gcc="/opt/homebrew/bin/gcc-5"
alias dict="python3 ~/Code/sandbox/dictionary/dictionary.py"
alias stime="/usr/bin/time -p"
alias reload="exec -l $SHELL"


# ===============
#    FUNCTIONS
# ---------------
# autoload -Uz emacs
autoload -Uz weather


# auto-fu
source $ZDOTDIR/plugins/auto-fu.zsh/auto-fu.zsh
function zle-line-init () {
    auto-fu-init
}
zle -N zle-line-init
# hide "-azfu-"
zstyle ':auto-fu:var' postdisplay $''
