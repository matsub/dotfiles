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
eval "$(pyenv virtualenv-init -)"

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

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '' history-beginning-search-backward-end
bindkey '' history-beginning-search-forward-end


# ===============
#    LIBRARIES
# ---------------
function loadlib() {
    lib=${1:?"You have to specify a library file"}
    if [ -f "$lib" ];then #ファイルの存在を確認
        . "$lib"
    fi
}

loadlib $ZDOTDIR/alias
loadlib $ZDOTDIR/autoload
loadlib $ZDOTDIR/environments
loadlib $ZDOTDIR/npm_completion
