# Dotfiles (in progress)

## Setup your Mac

Currently copied from [Dries Vints dotfiles repository](https://github.com/driesvints/dotfiles).

1. Update macOS to the latest version with the App Store.
2. Install Xcode from the App Store, open it and accept the license agreement.
3. Install macOS Command Line Tools by running `xcode-select --install`.
4. Copy your public and private SSH keys to `~/.ssh` and make sure their permissions are set to `600`.
5. Clone this repo to `~/.dotfiles`.
6. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file.
7. Enter your `./dotfiles` directory and run `chmod +x install.sh` (check if still necessary after #583a9a5).
8. Run `./ install.sh` to start the installation.
9. Restore preferences by running `mackup restore`.
10. Restart your computer to finalize the process.

## Apps notes

### Git

- In `.gitconfig`, set name and email.

### Mooom

- As stated in [Moom FAQ](https://manytricks.com/osticket/kb/faq.php?id=53), `/Library/Preferences/com.manytricks.Moom.plist`: “Macs may have differing numbers of displays, different resolutions, etc. Saved layouts for one won't make sense for another.”

### Sublime Text

- Install [Package Control](https://packagecontrol.io/installation).
