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

# Set NVM_DIR if it isn't already defined
[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

# Load nvm if it exists
[[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# Load bashrc
. ~/.bashrc

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
