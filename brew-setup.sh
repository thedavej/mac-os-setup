#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-setup.sh` then `./brew-setup.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

brew update
brew upgrade

#Programming Languages
brew install node
brew install php@7.3

#Dev Tools
brew install composer
brew install php-cs-fixer
brew install phpunit
brew install git
brew cask install visual-studio-code
brew cask install sequel-pro
brew cask install iterm2
brew install zsh
brew cask install virtualbox
brew cask instal vagrant
brew cask install insomnia

#Communication Apps
brew cask install slack

#Web Tools
brew cask install google-chrome
brew cask install firefox

#Fonts
brew tap homebrew/cask-fonts
brew cask install font-hasklig

#Misc
brew cask install spectacle
brew cask install numi

#Cleanup
brew cleanup
brew cask cleanup
