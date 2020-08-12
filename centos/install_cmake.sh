# install cmake
wget https://cmake.org/files/v3.6/cmake-3.6.2.tar.gz
tar -zxvf cmake-3.6.2.tar.gz
cd cmake-3.6.2
sudo ./bootstrap --prefix=/usr/local
sudo make
sudo make install
