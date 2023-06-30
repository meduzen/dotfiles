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

# Start MySQL service
brew services start mysql

# Install PHP extensions with PECL or Pickle
pecl install imagick
pickle install redis

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
sudo valet trust

# Create code directory and bind it to valet
mkdir $HOME/Code && cd $HOME/Code && valet park

# Install Oh-My-Zsh and fancy bits
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/plugins/zsh-syntax-highlighting
npm install --global pure-prompt # Minimal ZSH prompt https://github.com/sindresorhus/pure

# 1. Remove .zshrc from $HOME (if it exists)
# 2. Symlink the .zshrc file from the .dotfiles
# 3. Symlink ZSH custom folder (with plugins) to Dropbox
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/Dropbox/Mackup/.oh-my-zsh/custom $HOME/.oh-my-zsh/custom

# Install ni, an enhancement to your Node package manager https://github.com/antfu/ni
npm i -g @antfu/ni

# Link .npmrc to Dropbox
ln -sf ~/Dropbox/Mackup/.npmrc ~/.npmrc 

# Install ZSH Terraform autocomplete
terraform -install-autocomplete

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
