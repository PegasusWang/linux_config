FROM ubuntu:16.04

########################################
# System Stuff
########################################

ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Update and install
RUN apt-get update && apt-get install -y \
      curl \
      software-properties-common \
      git \
      locales \
      python-dev \
      python-pip \
      python3-dev \
      python3-pip \
      ctags \
      shellcheck \
      build-essential \
      openssh-client \
      openssh-server \
      silversearcher-ag

# setting up ssh
RUN mkdir -p /var/run/sshd
RUN useradd vim -m -p idatadev -s /bin/bash
RUN echo "vim:idatadev" | chpasswd
RUN echo "vim ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


# Generally a good idea to have these, extensions sometimes need them
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install vim8 and neovim, must vim first, or neovim will replace vim
# https://github.com/PegasusWang/vim-config
RUN add-apt-repository ppa:jonathonf/vim
RUN apt-get update && apt-get install -y vim

RUN add-apt-repository ppa:neovim-ppa/stable
RUN apt-get update && apt-get install -y neovim

RUN mkdir ~/.config
RUN git clone https://github.com/pegasuswang/vim-config ~/.config/nvim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

########################################
# Python
########################################

# Install python linting and neovim plugin
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip
RUN pip install neovim jedi flake8 flake8-docstrings flake8-isort flake8-quotes pep8-naming pep257 isort autopep8
RUN pip3 install neovim jedi flake8 flake8-docstrings flake8-isort flake8-quotes pep8-naming pep257 isort mypy ansible-lint autopep8


########################################
# Install nvm nodejs
# https://stackoverflow.com/questions/25899912/install-nvm-in-docker
########################################
# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NVM_DIR ~/.nvm
ENV NODE_VERSION 8.9.0

# Install nvm with node and npm install plugins for vim
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install -g \
        eslint \
        prettier \
        jsctags

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH


########################################
# Personalizations
########################################

# ENTRYPOINT [ "nvim" ]
