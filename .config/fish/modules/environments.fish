# set path
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH $HOME/.go
set -x PATH $XDG_CONFIG_HOME/yarn/global/node_modules/.bin $PATH
set -x PATH $GOROOT/bin $PATH
set -x PATH $GOPATH/bin $PATH

set -x LANG en_US.UTF-8
set -x PROJECT_ID (gcloud config get-value project -q)

# set keybinding mode emacs
set -U fish_key_bindings fish_default_key_bindings
