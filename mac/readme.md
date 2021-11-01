# Mac Terminal Setup

mac 安装 oh-my-zsh 主题 (mac install oh-mh-zsh and powerlevel10k theme)，终端配置

## 安装 iterm2

https://www.iterm2.com/downloads.html

## 安装 iterm2 theme (optional)

Iterm2 theme(I use dracula):

- https://github.com/MartinSeeler/iterm2-material-design
- https://draculatheme.com/iterm/

Term2 > Preferences > Profiles > Colors Tab -> import from and choose theme file.


## 安装或者升级你的 zsh 版本 (install or upgrade zsh)

```sh
# https://github.com/robbyrussell/oh-my-zsh
brew install zsh
# The installation script should set zsh to your default shell, but if it doesn't you can do it manually:
chsh -s $(which zsh)
```

## 安装 oh-my-zsh

```
# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## 安装字体 (install nerd-font)

```sh
# https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

Iterm2 里配置非 acsii 字体，否则对于 powerlevel10k 主题的特殊字体会显示不出来。

(Iterm2 -> Preferences -> Profiles -> Text -> Non-Ascii-Font 选择 nerd-font and restart Iterm2), 之后重启 Iterm2 生效


## 安装 zplug 插件管理器

```sh
# https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

## 安装命令行工具

```sh
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

brew install thefuck
brew install autojump
```

## 复制 zshrc 文件(zshrc 包含插件和主题)

```sh
# 复制我的 zshrc 文件，你可以删除相应的 fzf, thefuck 配置，brew install 相应的命令行工具
# you may brew install thefuck, fzf
cp mac_zshrc  ~/.zshrc
source ~/.zshrc
# 你自己的 shell 配置可以写到 ~/.env.sh，检测有这个文件会自动 source
```

## 安装 tmux 和 tmux 插件管理器(optional)

```sh
# install tmux plugin manager
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm , use prefix + I install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# MacOS install tmux
brew install tmux
brew install reattach-to-user-namespace
# copy my tmux conf, I use https://github.com/gpakosz/.tmux
cp .tmux.conf ~/.tmux.conf
cp .tmux.conf.local ~/.tmux.conf.local
```

# Ref

- https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
- https://medium.com/@rafavinnce/iterm2-zsh-oh-my-zsh-material-design-the-most-power-full-terminal-on-macos-332b1ee364a5
- https://github.com/gpakosz/.tmux
- [为 vim + tmux 开启真彩色(true color)](https://lotabout.me/2018/true-color-for-tmux-and-vim/)
- https://towardsdatascience.com/the-ultimate-guide-to-your-terminal-makeover-e11f9b87ac99
