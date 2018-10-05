# Random coolness
function weather() {
    city="$1"

    if [ -z "$city" ]; then
        city="Brussels"
    fi

    eval "curl http://wttr.in/${city}"
}

# Host
alias hostfile='open -a "Sublime Text" /etc/hosts' # Host file.

# Git
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Laravel Homestead
alias homesteadfile='open -a "Sublime Text" ~/.homestead/Homestead.yaml'
function homestead() {
	( cd ~/Homestead && vagrant $* )
}

# Vagrant
alias vh="vagrant halt"
alias vprov="vagrant provision"
alias vs="vagrant status"
alias vssh="vagrant ssh"
alias vu="vagrant up"

# Softwares & tools
alias finder='open -a "Finder"' # `finder .` opens current folder in Finder
alias st='open -a "Sublime Text"' # `st .` opens current folder in Sublime Text

# youtube-dl
alias yt='cd ~/Downloads && youtube-dl --all-subs --write-auto-sub'
alias ytmp3='cd ~/Downloads && youtube-dl -f bestaudio --extract-audio --audio-format mp3'

# Open this file with Sublime Text
alias aliases='open -a "Sublime Text" ~/.bashrc'
