mac 安装 oh-my-zsh 主题

# 安装 iterm2

https://www.iterm2.com/downloads.html


# 安装或者升级你的 zsh 版本

brew install zsh

- https://github.com/robbyrussell/oh-my-zsh

```
# The installation script should set zsh to your default shell, but if it doesn't you can do it manually:
chsh -s $(which zsh)
```


# 安装 oh-my-zsh

```
# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# 安装字体
```
# https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```
Iterm2 里配置非 acsii 字体。(Preferences -> Profiles -> Text -> Non-Ascii-Font 选择 nerd-font)

之后重启 Iterm2 生效


# 安装 zplug 插件管理器


```
# https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

# 复制 zshrc 文件

```
# 复制我的 zshrc 文件，你可以删除相应的 fzf, thefuck 配置，brew install 相应的命令行工具
# you may brew install thefuck, fzf
cp mac_zshrc  ~/.zshrc
source ~/.zshrc
```
