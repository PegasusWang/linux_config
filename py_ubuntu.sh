#!/usr/bin/env bash

# pyenv need
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev
# https://github.com/yyuu/pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
cp ./ubuntu_zshenv ~/.zshenv
exec $SHELL
pyenv install 2.7.11
pyenv install 3.5.0

# https://github.com/yyuu/pyenv-virtualenv
#git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
#echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshenv
#exec $SHELL
#pyenv virtualenv 2.7.11 ~/project/py_2.7.11
#pyenv virtualenv 3.5.0 ~/project/py_3.5.0
#

#for python
#export EDITOR=vim
#export PYTHONIOENCODING=UTF-8    # for python moidfy rc file bashrc or zshrc
sudo apt-get install -y build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev build-dep
sudo apt-get install -y python-pip
sudo apt-get install -y python-distribute
sudo apt-get install -y python-dev
sudo apt-get install -y ipython
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libudev-dev
sudo apt-get install libffi-dev   # for brycpt
#sudo pip install virtualenv


# 安装pyenv
# curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash


# 添加bashrc
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi

#for python utf-8
#sudo vi /usr
sudo vi /usr/lib/python2.7/sitecustomize.py
# encoding=utf8
import sys
if sys.getdefaultencoding() != 'utf-8':
    reload(sys)
    sys.setdefaultencoding('utf-8')
