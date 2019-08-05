# My Mac/Ubuntu dotfiles

参考 mac 开发环境配置：http://sourabhbajaj.com/mac-setup/

# Mac 开发常用软件

- Iterm2
- Alfread
- Dash
- Vscode/Neovim
- Pycharm/Idea/Goland

# Mac 环境快速安装

```
# install Homebrew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

# brew cask install
brew cask install iterm2 \
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
```
# install iterm2 theme: https://draculatheme.com/iterm/
