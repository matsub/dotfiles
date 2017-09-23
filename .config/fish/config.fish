set -x XDG_CONFIG_HOME $HOME/.config
set -x PATH $PATH $XDG_CONFIG_HOME/yarn/global/node_modules/.bin
set -x LANG en_US.UTF-8
set -x HOMEBREW_CASK_OPTS "--caskroom=/usr/local/Caskroom"

alias l="ls -lG"
alias la="ls -lGa"
alias vi="nvim"
alias vim="nvim"
alias py="python"
alias tk="tmux kill-session -t"

alias stime="/usr/bin/time -p"
alias reload=". $XDG_CONFIG_HOME/fish/config.fish"
alias randgen="openssl rand -base64"

fish_default_key_bindings

anyenv init - fish > tmp
source tmp
rm tmp
eval (docker-machine env docker)

# additional environment managers
eval (pyenv virtualenv-init - | source)
