#!/bin/sh

# Setup Script for other misc stuff
# To execute: save and `chmod +x ./misc-setup.sh` then `./misc-setup.sh`

#Node Packages
npm install --g prettier
npm install --g grunt
npm install -g gulp
npm install -g sails
npm install -g bower

#Install and setup Laravel Homestead
mkdir ~/Code
vagrant box add laravel/homestead
git clone https://github.com/laravel/homestead.git ~/Code/Homestead
cat Homestead/after.sh > ~/Code/Homestead/after.sh
cd ~/Code/Homestead
git checkout v7.14.2
bash init.sh
vagrant plugin install vagrant-bindfs

#Composer Packages
composer global require "squizlabs/php_codesniffer=*"
composer global require greynoise-design/laravel-coding-standard

#Link Greynoise Laravel Coding Standard to phpcs
ln -s ~/.composer/vendor/greynoise-design/laravel-coding-standard/GreynoiseLaravel ~/.composer/vendor/squizlabs/php_codesniffer/src/Standards/

#oh-my-zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
