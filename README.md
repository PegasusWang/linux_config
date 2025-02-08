# My Mac/Ubuntu dotfiles

参考 mac 开发环境配置：http://sourabhbajaj.com/mac-setup/

# Mac 开发常用软件

- Iterm2
- Alfread
- Dash
- Vscode/Neovim
- Pycharm/Idea/Goland


# Mac 终端环境快速安装

如果你使用 mac，可以参考这个文档教程快速设置一个美观的终端环境(包含iterm2/oh-my-zsh/tmux和主题等)：
https://github.com/PegasusWang/linux_config/tree/master/mac

# Mac 环境快速安装

```
# install Homebrew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

# brew cask install
brew install --cask iterm2 \
  alfread \
  docker-toolbox

# brew install
brew install aria2 \
  autojump \
  cloc \
  ctags \
  ffmpeg \
  fswatch \
  fzf \
  git \
  go \
  gotags \
  kafka \
  lua \
  msgpack \
  mysql \
  neovim \
  nginx \
  pyenv \
  pyenv-virtualenv \
  python \
  redis \
  rmtrash \
  ruby \
  sqlite \
  the_silver_searcher \
  thefuck \
  tig \
  tmux \
  tree \
  universal-ctags \
  vim \
  wget \
  youtube-dl \
  zookeeper \
  zplug \
  zsh-syntax-highlighting

# install oh-my-zsh  https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# now you can copy your own .zshrc file


# install zplug, plugin manager for zsh, https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install iterm2 theme: https://draculatheme.com/iterm/
```

# 注意：

- 如果 oh-my-zsh 使用 powerlevel10k 之类的特殊主题，注意需要安装 nerd font 之类的特殊字体显示图标
