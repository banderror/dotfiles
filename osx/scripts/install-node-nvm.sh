#!/usr/bin/env bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

# Install NVM -- https://github.com/nvm-sh/nvm
NVM_VERSION=0.39.7
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh | bash

# Reload terminal
exec zsh -l
