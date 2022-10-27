sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox# debian server setup

# install vim8
sudo apt-get update
sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox

git clone https://github.com/vim/vim
sudo apt-get install -y ncurses-dev

# 注意这里 python dir 配置的 path
./configure --with-features=huge  --enable-multibyte --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/plat-x86_64-linux-gnu --enable-perlinterp --enable-luainterp --enable-cscope --prefix=/usr
make && sudo make install

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# intsall nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

# install zsh
sudo apt-get install -y zsh 
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

sudo apt-get install tzdata='2016c-0+deb8u1'
sudo apt-get install default-jdk
# sudo apt-get install thrift-compiler
sudo apt-get install -y mysql-server

# install thrift=0.9.3
wget http://apache.01link.hk/thrift/0.9.3/thrift-0.9.3.tar.gz
cd thrift-0.9.3
./configure
make
sudo make install


 # install tmux 2.2, https://gist.github.com/mirskiy/19c712ab8f24fbf221b13f9699cd6f6c
sudo apt-get update
sudo apt-get install -y libevent-dev libncurses-dev make
wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
tar xvzf tmux-2.2.tar.gz
cd tmux-2.2/
./configure && make
sudo make install
