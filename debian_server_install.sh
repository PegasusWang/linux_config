# zhihu debian server setup

# install vim8
sudo apt-get update
sudo apt-get remove vim-tiny vim-common vim-gui-common vim-nox

git clone https://github.com/vim/vim
sudo apt-get install -y ncurses-dev

./configure --with-features=huge  --enable-multibyte --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/plat-x86_64-linux-gnu --enable-perlinterp --enable-luainterp --enable-cscope --prefix=/usr
make && sudo make install

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# intsall nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

# install zsh
sudo apt-get install -y zsh 
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# zhihu
sudo apt-get install tzdata='2016c-0+deb8u1'
sudo apt-get install default-jdk
# sudo apt-get install thrift-compiler
 sudo apt-get install zhihu-protobuf
sudo apt-get install -y mysql-server

# install thrift=0.9.3
wget http://apache.01link.hk/thrift/0.9.3/thrift-0.9.3.tar.gz
cd thrift-0.9.3
./configure
make
sudo make install
