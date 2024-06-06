#!/usr/bin/env bash

# Strict mode: https://gist.github.com/robin-a-meade/58d60124b88b60816e8349d1e3938615
set -euo pipefail

DIR="$HOME/Code/dotfiles/osx/scripts"

source $DIR/install-brew.sh
source $DIR/install-fonts.sh
source $DIR/install-git.sh
source $DIR/configure-git.sh
source $DIR/install-shell.sh
source $DIR/install-terminal.sh
source $DIR/install-node-nvm.sh
source $DIR/install-node-nodejs.sh
source $DIR/install-node-yarn.sh
source $DIR/install-main-apps.sh
source $DIR/install-main-devtools.sh
source $DIR/install-misc-apps.sh
source $DIR/install-misc-devtools.sh

# ------------------------------------------------------------------------------
# Restore apps' configurations

# https://github.com/lra/mackup
brew install mackup
# mackup restore

# ------------------------------------------------------------------------------
# Cleanup Brew packages

brew cleanup
