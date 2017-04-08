export ZDOTDIR=$HOME/.zsh
export ZPLUG_HOME=$ZDOTDIR/zplug

source $ZDOTDIR/COMPLETIONS

source $ZDOTDIR/PLUGINS
source $ZDOTDIR/PLUG-SETTINGS

source $ZDOTDIR/ACTIVATION
source $ZDOTDIR/ALIAS
source $ZDOTDIR/ENVIRONMENTS
source $ZDOTDIR/npm_completion
source $ZDOTDIR/pip_completion

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /usr/local/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh ]] && . /usr/local/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh