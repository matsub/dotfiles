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

function loadlib() {
    lib=${1:?"You have to specify a library file"}
    if [ -f "$lib" ];then #ファイルの存在を確認
        . "$lib"
    fi
}

loadlib $ZDOTDIR/alias
loadlib $ZDOTDIR/autoload
loadlib $ZDOTDIR/completion
loadlib $ZDOTDIR/environments
