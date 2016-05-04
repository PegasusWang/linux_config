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
sudo apt-get install -y redis-server
sudo apt-get install -y supervisor
sudo apt-get install -y nginx
