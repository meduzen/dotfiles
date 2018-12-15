# Dotfiles (in progress)

## Setup your Mac

Deeply inspired by [Dries Vints dotfiles repository](https://github.com/driesvints/dotfiles).

1. Update macOS to the latest version with the App Store.
2. Install Xcode from the App Store, open it and accept the license agreement.
3. Install macOS Command Line Tools by running `xcode-select --install`.
4. Copy your public and private SSH keys to `~/.ssh` and make sure their permissions are set to `600`.
5. Add your SSH private keys to the authentication agent by running `ssh-add ~/.ssh/private_key_name`.
6. Clone this repository to `~/.dotfiles`.
7. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file.
8. Enter your `./dotfiles` directory and run `chmod +x install.sh` (check if still necessary after #583a9a5).
9. Run `./ install.sh` to start the installation.
10. Restore preferences by running `mackup restore` (make sure your [storage provider](https://github.com/lra/mackup/blob/master/doc/README.md#storage) is connected).
11. Restart your computer to finalize the process.

## Post setup

1. Go to the App Store to retrieve the apps that aren’t in your Brewfile.
2. Run the Simulator, menu _Hardware_, _Device_, _Manage devices…_ and install the additional components.

## Apps notes

### Git

- In `.gitconfig`, set name and email.

### Mooom

- As stated in [Moom FAQ](https://manytricks.com/osticket/kb/faq.php?id=53), `/Library/Preferences/com.manytricks.Moom.plist`: “Macs may have differing numbers of displays, different resolutions, etc. Saved layouts for one won't make sense for another.”

### Sublime Text

- Install [Package Control](https://packagecontrol.io/installation).
