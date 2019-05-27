# set path
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH $HOME/Develop
set -x PATH $PATH $XDG_CONFIG_HOME/yarn/global/node_modules/.bin
set -x PATH $PATH $GOROOT/bin
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH /usr/local/src/depot_tools

set -x LANG en_US.UTF-8
set -x PROJECT_ID (gcloud config get-value project -q)

set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/

# set keybinding mode emacs
set -U fish_key_bindings fish_default_key_bindings
