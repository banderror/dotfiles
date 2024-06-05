#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Make sure brew is in PATH during the script execution
eval "$(/opt/homebrew/bin/brew shellenv)"

# Main tools
brew install commander-one       # ?
brew install visual-studio-code  # ?
brew install typora              # ?
brew install gitkraken           # ?
brew install docker              # ?

# HTTP and networking
brew install postman             # ?
brew install insomnia            # ?
brew install http-toolkit        # https://httptoolkit.tech/
brew install charles             # ?
brew install wireshark           # ?

# Languages and platforms
brew install go
brew install python3

# Cloud native
# brew install google-cloud-sdk           # ?
# brew install awscli                     # ?
# brew install aws-iam-authenticator      # ?
# brew install kubernetes-helm            # ?
brew install terraform                  # ?
brew install vault                      # https://www.vaultproject.io/

# CLI utilities
brew install wget                       # ?
brew install jq                         # ?
brew install lsd                        # https://github.com/Peltoche/lsd
brew install bat                        # https://github.com/sharkdp/bat
brew install lolcat                     # https://github.com/busyloop/lolcat
brew install neofetch                   # https://github.com/dylanaraps/neofetch
brew install hey                        # https://github.com/rakyll/hey
brew install httpie                     # ?
brew install mitmproxy                  # ?
brew install mtr                        # ?
brew install fzf                        # https://github.com/junegunn/fzf
$(brew --prefix)/opt/fzf/install
brew install pandoc                     # https://pandoc.org/index.html

# Misc
brew install dash                # ?
brew install gpg-suite           # ?
brew install suspicious-package  # ?
