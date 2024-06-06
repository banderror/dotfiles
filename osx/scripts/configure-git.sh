#!/usr/bin/env bash

# Strict mode: https://gist.github.com/robin-a-meade/58d60124b88b60816e8349d1e3938615
set -euo pipefail

# Configure Git and Git LFS
cp ~/Code/dotfiles/osx/homedir/.gitconfig ~/.gitconfig
git lfs install

# Reload terminal
exec zsh -l
