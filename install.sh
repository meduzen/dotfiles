#!/bin/sh

echo "Setting up your computer…"

# Install Homebrew if not found
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update recipes
# brew update

# Install dependencies with bundle (see Brewfile)
# brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
# chsh -s $(which zsh)

# Install PHP extensions with PECL
pecl install imagick

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/spark-installer laravel/valet

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Install Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node # node is an alias for the latest version

# Where the coolness happens
mkdir $HOME/Code

# Install Oh-My-Zsh and fancy bits
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/plugins/zsh-syntax-highlighting
npm install --global pure-prompt # Minimal ZSH prompt https://github.com/sindresorhus/pure

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
