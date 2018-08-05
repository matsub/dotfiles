alias l="ls -lG"
alias la="ls -lGa"
alias vim="nvim"
alias vi="vim"
alias py="python3"

# CLI chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-beta="/Applications/Google\ Chrome\ Beta.app/Contents/MacOS/Google\ Chrome --user-data-dir=~/chromebeta"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"
alias chrome-headless="chrome --headless --disable-gpu"

# tools
alias stime="/usr/bin/time -p"
alias reload="source $XDG_CONFIG_HOME/fish/config.fish"
alias randgen="openssl rand -base64"
alias clock="tty-clock -DsC 7"
alias tk="tmux kill-session -t"
alias docker-clean="docker rm (docker ps -aq)"
alias alacritty="open -n /Applications/Alacritty.app"

# instant fish
function docker-clean-img -d "remove docker image without label"
    for image in (docker images | grep none | tr -s " " | cut -f3 -d" ")
        docker rmi "$image"
    end
end
