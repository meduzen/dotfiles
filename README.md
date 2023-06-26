# Dotfiles

These instructions partly automates the setup of a device using macOS with an Apple Silicon ship.

## Setup your Mac

Deeply inspired by [Dries Vints dotfiles repository](https://github.com/driesvints/dotfiles).

1. Update macOS to the latest version (_System Preferences_ / _Software Update_).
2. Install Xcode from the App Store and open it.
3. Install macOS Command Line Tools by running `xcode-select --install` in Terminal.
4. Install Rosetta by running `sudo softwareupdate --install-rosetta`.
5. Copy your public and private SSH keys to `~/.ssh` and make sure their permissions are set to `600`.
6. Add your SSH private keys to the authentication agent by running `ssh-add ~/.ssh/private_key_name`.
7. Clone this repository to `~/.dotfiles`.
8. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file. ⚠️ **seems not needed, to be confirmed**
9. Enter the `.dotfiles` directory and run `chmod +x install.sh` (check if still necessary after #583a9a5).
10. Run `./install.sh` to start the installation.
11. Restore preferences by running `mackup restore` (make sure your [storage provider](https://github.com/lra/mackup/blob/master/doc/README.md#storage) is connected).
12. Restart your computer to finalize the process.

## Post setup

1. Go to the App Store to retrieve the apps that are not in your Brewfile.
2. And now, some app by app notes… 👇

### Apple Simulator

In Xcode:
- go to menu _Window_, _Devices and Simulators_, _Simulators_ to add additional iOS versions down to iOS 14.0.1.
- go to menu _Xcode_, _Settings_, _Platforms_ to add additional devices.

### MySQL

- (optional) Security: set a root password by running [`sudo mysql_secure_installation`](https://dev.mysql.com/doc/refman/8.0/en/mysql-secure-installation.html).
- Databases migration: by running `mysql -u root -p < alldb.sql`, you can import all local databases you have exported with `mysqldump -u root -p --all-databases > alldb.sql`.
- Favorites and passwords migration or migration from Sequel Pro to Sequel Ace: follow the [dedicated guide](https://sequel-ace.com/get-started/migrating-from-sequel-pro.html).
- If you need access to remote servers, grant Sequel Ace the access to your `~/.ssh/config`, `~/.ssh/known_hosts` and the needed SSH keys.

### Git

- In `.gitconfig`, set a name and an email address.

### Mooom

- As stated in [Moom FAQ](https://manytricks.com/osticket/kb/faq.php?id=53), `/Library/Preferences/com.manytricks.Moom.plist`: “Macs may have differing numbers of displays, different resolutions, etc. Saved layouts for one won't make sense for another.”

### Sublime Text

- In Sublime Text, go to _Tools_, _Install Package Control_. Then, [_to be completed_].
