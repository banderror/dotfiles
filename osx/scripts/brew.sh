#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` timestamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source ./install-brew.sh
source ./install-fonts.sh
source ./install-git.sh
source ./configure-git.sh
source ./install-shell.sh
source ./install-terminal.sh
source ./install-node-nvm.sh
source ./install-node-nodejs.sh
source ./install-node-yarn.sh
source ./install-tools-main.sh
source ./install-tools-misc.sh

# ------------------------------------------------------------------------------
# Install other apps

brew install bitwarden
brew install --cask ticktick
brew install --cask numi
brew install --cask purevpn

brew install --cask slack
brew install --cask skype
brew install --cask telegram

brew install --cask google-drive
brew install --cask adobe-acrobat-reader
brew install --cask megasync
brew install --cask calibre
brew install --cask qbittorrent
brew install --cask recordit
brew install --cask keycastr                  # https://github.com/keycastr/keycastr
brew install --cask logitech-options
brew install --cask vlc
brew install --cask native-access

# ------------------------------------------------------------------------------
# Restore apps' configurations

# https://github.com/lra/mackup
brew install mackup
# mackup restore

# ------------------------------------------------------------------------------
# Cleanup Brew packages

brew cleanup
