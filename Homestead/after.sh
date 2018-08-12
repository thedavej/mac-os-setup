#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
if [ ! -f /home/vagrant/.extra_homestead_software_installed ]; then
	echo 'installing some extra software'

    #
    # install zsh
    #
    # apt-get install zsh -y
    sudo apt-get install zsh -y

    #
    # install oh my zhs
    # (after.sh is run as the root user, but ssh is the vagrant user)
    #
    git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
    cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
    sudo chsh -s /usr/bin/zsh vagrant
    sed -i 's/robbyrussell/gozilla/g' /home/vagrant/.zshrc

    #
    # remember that the extra software is installed
    #
    touch /home/vagrant/.extra_homestead_software_installed
else
    echo "extra software already installed... moving on..."
fi
