#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Yarn is now shipped with Node and here we disable it to be able to install via brew
corepack disable # https://github.com/nodejs/corepack
brew install yarn
