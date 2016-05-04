#!/usr/bin/env bash

# !!!note: use "source py_install.sh" instead of ./py_install.sh
# pyenv need
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev


sudo apt-get install -y build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev build-dep libpq-dev
sudo apt-get install -y python-pip
sudo apt-get install -y python-distribute
sudo apt-get install -y python-dev
sudo apt-get install -y ipython
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libudev-dev
sudo apt-get install -y libffi-dev   # for brycpt


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


#for python utf-8
#sudo vi /usr
#sudo vi /usr/lib/python2.7/sitecustomize.py
#encoding=utf8
#import sys
#if sys.getdefaultencoding() != 'utf-8':
#    reload(sys)
#    sys.setdefaultencoding('utf-8')
