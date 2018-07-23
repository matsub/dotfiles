set -x XDG_CONFIG_HOME $HOME/.config

source $XDG_CONFIG_HOME/fish/modules/environments.fish
source $XDG_CONFIG_HOME/fish/modules/bind.fish
source $XDG_CONFIG_HOME/fish/modules/alias.fish
source $XDG_CONFIG_HOME/fish/modules/plugin-settings.fish

set -x MDOTDIR (dirname (readlink ~/.config))

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'; else; . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'; end; end
