#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y language-pack-zh-hant-base language-pack-zh-hans-base language-pack-zh
sudo locale-gen zh_CN.UTF-8
echo 'LC_ALL="zh_CN.UTF-8"' | sudo tee -a /etc/environment

#for ubuntu
sudo apt-get install -y vim curl tmux build-essential zsh git wget ssh make
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y trash-cli

# for develop
sudo apt-get install redis-server
sudo apt-get install supervisor
sudo apt-get install nginx


#for python
#export EDITOR=vim
#export PYTHONIOENCODING=UTF-8    # for python moidfy rc file bashrc or zshrc
sudo apt-get install build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev
sudo apt-get install python-pip
sudo apt-get install python-dev
sudo apt-get install ipython
sudo apt-get install zlib1g-dev
sudo apt-get install libudev-dev
sudo pip install virtualenv

#for python utf-8
#sudo vi /usr
#sudo vi /usr/lib/python2.7/sitecustomize.py
# encoding=utf8
#import sys
#reload(sys)
#sys.setdefaultencoding('utf8')


# pyenv need
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev


# https://github.com/yyuu/pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
cp ./ubuntu_zshenv ~/.zshenv
#exec $SHELL
pyenv install 2.7.11
pyenv install 3.5.0

# https://github.com/yyuu/pyenv-virtualenv
pyenv virtualenv 2.7.11 pyenv_2.7.11
pyenv virtualenv 3.5.0 pyenv_3.5.0

mkdir -p ~/project/pyenv_2.7.11
mkdir -p ~/project/pyenv_3.5.0


#for python
#export EDITOR=vim
#export PYTHONIOENCODING=UTF-8    # for python moidfy rc file bashrc or zshrc
sudo apt-get install -y build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev build-dep libpq-dev
sudo apt-get install -y python-pip
sudo apt-get install -y python-distribute
sudo apt-get install -y python-dev
sudo apt-get install -y ipython
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libudev-dev
sudo apt-get install -y libffi-dev   # for brycpt

