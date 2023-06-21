# Random coolness
function weather() {
    city="$1"

    if [ -z "$city" ]; then
        city="Brussels"
    fi

    eval "curl http://wttr.in/${city}"
}

# https://github.com/nvbn/thefuck/wiki/Shell-aliases
eval "$(thefuck --alias)"

# Network
_ip() {
    ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
}
alias ip="_ip"

alias flushdns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'

function sslexpire() {
    echo | openssl s_client -servername $1 -connect $1:443 2>/dev/null | openssl x509 -noout -dates
}

# Hidden files
function hidehiddenfiles() {
    defaults write com.apple.finder AppleShowAllFiles -bool NO
    killall Finder
}
function showhiddenfiles() {
    defaults write com.apple.finder AppleShowAllFiles -bool YES
    killall Finder
}

# Host
alias hostfile='open -a "Sublime Text" /etc/hosts' # Host file.

# SSL certificate expiration
function sslexpire() {
    echo | openssl s_client -servername $1 -connect $1:443 2>/dev/null | openssl x509 -noout -dates
}

# Git
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Laravel ecosystem
alias a="php artisan"

# Doc
function mdn() {
    open -a "Firefox" "https://mdn.io/$1"
}

# Softwares & tools
alias st='open -a "Sublime Text"' # `st .` open current folder
alias sql='open -a "Sequel Pro"'
alias wd='npm run dev'
alias wb='npm run build'
alias wp='npm run preview'
alias jslint="./node_modules/.bin/prettier --write 'resources/js/**/*.js'"

# youtube-dl
alias yt='cd ~/Downloads/yt && youtube-dl --write-auto-sub'
alias ytmp3='cd ~/Downloads/yt && youtube-dl -f bestaudio --extract-audio --audio-format mp3'

# Some paths
alias www="cd ~/Code"
alias sshssh="st ~/.ssh"
alias gpggpg="st ~/.gnupg"

# Remote SSH
# alias ssh-insertsomeservername='ssh username@XX.XX.XX.XX'

# Open this file with Sublime Text
alias aliases='open -a "Sublime Text" ~/.bashrc'
