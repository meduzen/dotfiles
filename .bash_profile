[[ -f ~/.bashrc ]] && . ~/.bashrc

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PHP 7.1
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"
