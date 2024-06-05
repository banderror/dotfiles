#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Configure Git and Git LFS
cp ~/Code/dotfiles/osx/homedir/.gitconfig ~/.gitconfig
git lfs install

# Reload terminal
exec zsh -l
