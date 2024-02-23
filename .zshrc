# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Plugins
# Standard plugins: `~/.oh-my-zsh/plugins/*`
# Custom plugins: `~/.oh-my-zsh/custom/plugins/`
# Example: plugins=(rails git textmate ruby lighthouse)
# Too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    fzf # required by navi
)

source $ZSH/oh-my-zsh.sh

# Language environment for non-English macOS
export LANG=en_US.UTF-8

# Configured by `zsh-newuser-install`
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Added by `compinstall`
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

unsetopt beep # no bell on error

# Prompt pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
prompt pure

# Load bashrc
. ~/.bashrc

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Homebrew
export PATH=/opt/homebrew/sbin:$PATH
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
