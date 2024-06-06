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
source ./install-main-apps.sh
source ./install-main-devtools.sh
source ./install-misc-apps.sh
source ./install-misc-devtools.sh

# ------------------------------------------------------------------------------
# Restore apps' configurations

# https://github.com/lra/mackup
brew install mackup
# mackup restore

# ------------------------------------------------------------------------------
# Cleanup Brew packages

brew cleanup
