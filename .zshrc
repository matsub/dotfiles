export ZDOTDIR=$HOME/.zsh
export ZPLUG_HOME=$ZDOTDIR/zplug
export CFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"

source $ZDOTDIR/COMPLETION

source $ZDOTDIR/PLUGINS
source $ZDOTDIR/PLUG-SETTINGS

source $ZDOTDIR/PATH
source $ZDOTDIR/ALIAS
source $ZDOTDIR/ENVIRONMENTS
source $ZDOTDIR/npm_completion
source $ZDOTDIR/pip_completion
