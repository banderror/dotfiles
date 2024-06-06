#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew install --cask logitech-options
brew install --cask logi-options-plus
brew install --cask logitune
brew install --cask vlc
brew install --cask calibre
# brew install --cask recordit
# brew install --cask keycastr                  # https://github.com/keycastr/keycastr
# brew install --cask purevpn
# brew install --cask qbittorrent
# brew install --cask native-access
