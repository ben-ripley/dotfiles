#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all


brew install bash-completion2
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install curl
brew install git
brew install node
brew install python
brew install wget

brew tap aspnet/dnx
brew install dnvm

# Remove outdated versions from the cellar.
brew cleanup

# Display what brews you have installed
brew list --versions