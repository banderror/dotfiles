#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Ask for the administrator password upfront
sudo -v

# ------------------------------------------------------------------------------
# Install Homebrew -- https://brew.sh/

echo "Homebrew :: Installing"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
echo

# ------------------------------------------------------------------------------
# Configure

#echo "Homebrew :: Adding taps"
#brew tap homebrew/cask-fonts
#brew tap homebrew/cask-drivers
#brew tap homebrew/cask-versions
#echo

# ------------------------------------------------------------------------------
# Update

echo "Homebrew :: Updating"
brew update
brew upgrade
brew cleanup
echo
