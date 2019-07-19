export ZDOTDIR=$HOME/.zsh
export ZPLUG_HOME=$ZDOTDIR/zplug

export XDG_CONFIG_HOME=$HOME/.config

export MDOTDIR=$(dirname $(readlink ~/.zshrc))

source $ZDOTDIR/COMPLETIONS

source $ZDOTDIR/PLUGINS
source $ZDOTDIR/PLUG-SETTINGS

source $ZDOTDIR/ACTIVATION
source $ZDOTDIR/ALIAS
source $ZDOTDIR/ENVIRONMENTS
