#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Browsers
brew install google-chrome
brew install google-chrome@dev
brew install firefox
brew install firefox@developer-edition
brew install brave-browser
brew install opera
brew install microsoft-edge

# File managers and utilities
brew install commander-one       # ?

# Dev tools
brew install visual-studio-code  # ?
brew install typora              # ?
brew install gitkraken           # ?
brew install --cask docker       # ?
