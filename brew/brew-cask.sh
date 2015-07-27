#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Apps
brew cask install atom
brew cask install google-chrome
brew cask install google-drive
brew cask install iterm2
brew cask install sublime-text3
brew cask install transmission 
brew cask install webstorm
brew cask install vlc

# Quicklook plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode			# Preview source code files with syntax highlighting
brew cask install qlstephen				# Preview plain text files without a file extension
brew cask install qlmarkdown			# Preview Markdown files
brew cask install quicklook-json		# Preview JSON files
brew cask install qlprettypatch			# Preview .patch files
brew cask install quicklook-csv			# Preview CSV files
brew cask install betterzipql			# Preview archives
brew cask install qlimagesize			# Display image size and resolution
brew cask install webpquicklook			# Preview WebP images
brew cask install suspicious-package	# Preview the contents of a standard Apple installer package
