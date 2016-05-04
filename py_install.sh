#for python
export EDITOR=vim
export PYTHONIOENCODING=UTF-8    # for python moidfy rc file bashrc or zshrc
sudo apt-get install -y build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev
sudo apt-get install python-pip
sudo apt-get install python-distribute
sudo apt-get install python-dev
sudo apt-get install ipython
sudo apt-get install zlib1g-dev
sudo apt-get install libudev-dev
sudo pip install virtualenv
sudo apt-get install libffi-dev   # for brycpt


# 安装pyenv
curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash


# 添加bashrc
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi
# 安装必要包
sudo apt-get build-dep python2.7
pyenv install 2.7.10
pyenv install 3.5.0

#创建虚拟环境
pyenv virtualenv 2.7.1 testenv271

#for python utf-8
#sudo vi /usr
sudo vi /usr/lib/python2.7/sitecustomize.py
# encoding=utf8
import sys
if sys.getdefaultencoding() != 'utf-8':
    reload(sys)
    sys.setdefaultencoding('utf-8')
