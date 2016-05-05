#!/usr/bin/env bash

# !!!note: use "source vps_py.sh" to execute

# pyenv need
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev


# https://github.com/yyuu/pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
cp ./ubuntu_zshenv ~/.zshenv
#exec $SHELL
alias pyenv="~/.pyenv/bin/pyenv"

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
sudo apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        bzip2 \
        file \
        g++ \
        gcc \
        imagemagick \
        libbz2-dev \
        libc6-dev \
        libcurl4-openssl-dev \
        libdb-dev \
        libevent-dev \
        libffi-dev \
        libgeoip-dev \
        libglib2.0-dev \
        libjpeg-dev \
        liblzma-dev \
        libmagickcore-dev \
        libmagickwand-dev \
        libmysqlclient-dev \
        libncurses-dev \
        libpng-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libtool \
        libwebp-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        make \
        patch \
        xz-utils \
        zlib1g-dev \
