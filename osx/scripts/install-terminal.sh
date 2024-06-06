#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# ------------------------------------------------------------------------------
# Install iTerm

# Ask for the administrator password upfront
sudo -v

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install packages
brew install --cask iterm2

# ------------------------------------------------------------------------------
# Download iTerm2 color schemes
# https://github.com/martinlindhe/base16-iterm2

export DOWNLOADS="$HOME/Downloads/iTerm2"
export CSCHEMES_DIR="$DOWNLOADS/color-schemes"
export CSCHEMES_ZIP="$DOWNLOADS/color-schemes.zip"
export CSCHEMES_URL="https://github.com/martinlindhe/base16-iterm2/archive/master.zip"

# Cleanup previous downloads
rm -rf "$DOWNLOADS"
mkdir -p "$DOWNLOADS"

# Download new files
curl -o "$CSCHEMES_ZIP" -L "$CSCHEMES_URL"
unzip -a "$CSCHEMES_ZIP" -d "$CSCHEMES_DIR"

# ------------------------------------------------------------------------------
# Import color schemes

# iTerm -> Preferences -> Profiles -> Colors -> Color Presets -> Import
# then select the colour scheme you like.

# ------------------------------------------------------------------------------
# Set up "Nerd Fonts"

# They can be found in ~/Library/Fonts:
#   $ ls -la ~/Library/Fonts
#   Hack Italic Nerd Font Complete.ttf
#   Hack Regular Nerd Font Complete.ttf
#   Hack Bold Italic Nerd Font Complete.ttf
#   Hack Bold Nerd Font Complete.ttf

# Configure iTerm
# iTerm2 -> Preferences -> Profiles -> Text -> Font -> Change Font
