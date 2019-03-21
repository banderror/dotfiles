#!/bin/bash

# ------------------------------------------------------------------------------
# Check if Homebrew is installed, and install if it's not

if [[ $(command -v brew) == "" ]]; then
    echo "Homebrew :: Installing"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# ------------------------------------------------------------------------------
# Configure and update

export HOMEBREW_NO_AUTO_UPDATE=1

echo "Homebrew :: Adding taps"
brew tap caskroom/fonts
brew tap caskroom/versions

echo "Homebrew :: Updating"
brew update
brew upgrade

export HOMEBREW_NO_AUTO_UPDATE=0

# ------------------------------------------------------------------------------
# Install essentials

# Git
brew install git && brew link --force git
brew install git-crypt
brew install git-lfs
git lfs install

# Utils
brew install jq
brew install mackup
brew install mtr
brew install wget

# Fonts
brew cask install font-hack-nerd-font

# ------------------------------------------------------------------------------
# Install GUI apps

# Browsers
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install opera

# Messengers
brew cask install skype
brew cask install slack
brew cask install telegram

# Files and documents
brew cask install adobe-acrobat-reader
brew cask install commander-one
brew cask install double-commander
brew cask install google-backup-and-sync

# Misc tools
brew cask install 1password6
brew cask install calibre
brew cask install grammarly
brew cask install notion
brew cask install numi
brew cask install pluralsight
brew cask install purevpn
brew cask install puush
brew cask install recordit
brew cask install vlc

# Torrent clients
brew cask install qbittorrent
brew cask install webtorrent
brew cask install xtorrent

# ------------------------------------------------------------------------------
# Install dev tools

# Terminals
brew cask install hyper
brew cask install iterm2

# Editors and IDEs
brew cask install atom
brew cask install jetbrains-toolbox
brew cask install visual-studio-code

# Git-related stuff
brew cask install gitify
brew cask install gitkraken
brew cask install sourcetree

# Security
brew cask install gpg-suite
brew cask install suspicious-package

# Networking
brew cask install charles
brew cask install insomnia
brew cask install ngrok
brew cask install postman
brew cask install wireshark

# Containers and clouds
brew cask install docker
brew cask install google-cloud-sdk
brew install awscli
brew install kubernetes-helm
brew install terraform

# Misc tools
brew cask install browserstacklocal
brew cask install dash
brew cask install robo-3t

# ------------------------------------------------------------------------------
# Install Node.js

# Install NVM
if [[ $(command -v nvm) == "" ]]; then
    echo "NVM :: Installing"
    NVM_VERSION=0.34.0
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash

    echo "NVM :: Making it useable in the current terminal session"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Install Node.js
nvm install node
nvm install 8.6
nvm alias default 8.6

# Install YARN
brew install yarn

# ------------------------------------------------------------------------------
# Install Java

brew cask install java8

# ------------------------------------------------------------------------------
# Install Scala

brew install scala
brew install sbt

# ------------------------------------------------------------------------------
# Install Python

brew install python3

# ------------------------------------------------------------------------------
# Install Go

brew install go

# ------------------------------------------------------------------------------
# Cleanup Brew packages

brew cleanup
