#!/usr/bin/env bash

#for zh-cn utf8 ubuntu14.04
sudo apt-get update
sudo apt-get install -y language-pack-zh-hant-base language-pack-zh-hans-base language-pack-zh
sudo locale-gen zh_CN.UTF-8
echo 'LC_ALL="zh_CN.UTF-8"' | sudo tee -a /etc/environment
sudo dpkg-reconfigure locales

#for ubuntu
sudo apt-get install -y vim curl tmux build-essential zsh git wget ssh make
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y trash-cli

# open terminal in finder
sudo apt-get install -y nautilus-open-terminal
nautilus -q

# install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh
cp ./ubuntu_zshrc ~/.zshrc


# for docker install ubuntu14.04
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get install -y docker-engine
sudo service docker start
#sudo docker run hello-world

# for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./ubuntu_vimrc ~/.vimrc
vim +PluginInstall +qall


# modify capslock
# sudo vi /etc/default/keyboard
echo 'XKBOPTIONS="ctrl:nocaps"' | sudo tee -a /etc/default/keyboard
sudo dpkg-reconfigure keyboard-configuration


# restart 
sudo reboot -h 0

# if you want to use terminal solarized color
# https://github.com/Anthony25/gnome-terminal-colors-solarized


# install nvm and nodejs
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
echo 'registry =https://registry.npm.taobao.org' > ~/.npmrc
