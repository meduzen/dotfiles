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
    zsh-autosuggestions
    fzf # required by zoxide
)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Language environment for non-English macOS
export LANG=en_US.UTF-8

# Disable auto-update in `brew`
# https://sebastiandedeyne.com/how-not-to-update-every-package-in-existence-break-your-local-environment-and-spend-the-afternoon-dealing-with-things-you-did-not-want-to-deal-with-when-installing-a-package-with-brew
export HOMEBREW_NO_AUTO_UPDATE=1

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

# GPG
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

eval "$(zoxide init zsh --cmd cd)"
