#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Git
brew install git
brew install git-crypt
brew install git-lfs

# Install additional CLIs
brew install gh     # https://github.com/cli/cli, https://cli.github.com/manual/
brew install hub    # https://github.com/github/hub, https://hub.github.com/

# Switch from built-in Git to the one installed via Homebrew
brew unlink git && brew link git
exec zsh -l
