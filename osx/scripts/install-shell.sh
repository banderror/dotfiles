#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# ------------------------------------------------------------------------------
# Pre-configure

# Configure Zsh
cp ~/Code/dotfiles/osx/homedir/.zshrc ~/.zshrc

# ------------------------------------------------------------------------------
# Install

# Ask for the administrator password upfront
sudo -v

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install packages
brew install zsh
brew install antigen

# ------------------------------------------------------------------------------
# Post-configure

# Switch from built-in Zsh to the one installed via Homebrew
# https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
sudo dscl . -create "/Users/$USER" UserShell /usr/local/bin/zsh

# https://github.com/zsh-users/zsh-completions/issues/433
# https://github.com/zsh-users/zsh-completions/issues/433#issuecomment-680128428
compaudit | xargs chmod g-w

# Reload terminal
exec zsh -l
