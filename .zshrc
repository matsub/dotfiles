export ZDOTDIR=$HOME/.zsh
export ZPLUG_HOME=$ZDOTDIR/zplug
export XDG_CONFIG_HOME=$HOME/.config

source $ZDOTDIR/COMPLETIONS

source $ZDOTDIR/PLUGINS
source $ZDOTDIR/PLUG-SETTINGS

source $ZDOTDIR/ACTIVATION
source $ZDOTDIR/ALIAS
source $ZDOTDIR/ENVIRONMENTS
source $ZDOTDIR/npm_completion
source $ZDOTDIR/pip_completion
export DOTDIR=$(dirname $(readlink ~/.config))
