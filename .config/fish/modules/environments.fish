# set path
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH $HOME/.go
set -x PATH $XDG_CONFIG_HOME/yarn/global/node_modules/.bin $PATH
set -x PATH $GOROOT/bin $PATH
set -x PATH $GOPATH/bin $PATH
set -x PATH /usr/local/bin $PATH

set -x LANG en_US.UTF-8
set -x HOMEBREW_CASK_OPTS "--caskroom=/usr/local/Caskroom"
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths

# set keybinding mode emacs
set -U fish_key_bindings fish_default_key_bindings
