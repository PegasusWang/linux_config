#!/usr/bin/env bash

#!/usr/bin/env bash
# Build and install neovim for Debian

pushd .

mkdir -p ~/src
cd ~/src

# Install cmake 2.8.10
cmake_package="cmake-3.3.1"
if [ ! -e ~/scr/$cmake_package ]; then
  curl -O http://www.cmake.org/files/v3.3/$cmake_package.tar.gz
  tar -xzvf $cmake_package.tar.gz
fi

cd ~/src/$cmake_package && ./configure -- -DCMAKE_USE_OPENSSL=ON && sudo make install -j4 && cd ~/src

#Install dependencies                                                 
sudo apt-get install libtool libtool-bin autoconf automake cmake libncurses5-dev g++ pkg-config unzip              

#Get or update neovim github repo
if [ ! -e ~/src/neovim ]; then
  git clone https://github.com/neovim/neovim
else
  cd neovim                                                                                                        
  git pull origin
fi

cd ~/src/neovim                                                                                                    
sudo make install
popd                                                                                                               

echo nvim command: `which nvim`
