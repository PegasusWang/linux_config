# mac 使用 Karabiner-Elements  改键配置(HHKB 无鼠标编程指南)

写了一篇[mac 无鼠标编程指南(视频)](https://zhuanlan.zhihu.com/p/91031876)和我使用到的一些设备 [程序员双十一剁手指南](https://zhuanlan.zhihu.com/p/89192238) 感兴趣可以参考一下。

首先安装 [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements) 。然后配置文件放置位置在

`~/.config/karabiner/assets/complex_modifications/wasd.json`

- wasd.json: use right_command + WASD as arrow key
- page_up_down.json: use left_command + [ ] as page_up and page_down
- command_pn_copy.json: use right_command + n/p as command + c/v
- alt_arrow_to_alt_hjkl.json: use alt + hjkl to alt + arrow, so I can use alt+hjkl select tmux pane
- right_command_arrow_to_alt_hjkl.json: use right_command + wasd to alt + hjkl, so I can use right_command+wasd select tmux pane

json 文件放入之后，打开 Karabiner-Elements -> Complex modifications -> Add rule，就可以看到你的相关改键配置，点击加入就可以生效。
这里我把 right_command + WASD 修改成上下左右，command + [] 翻页， right_command+n/p 复制粘贴,
right_command + wasd 移动 tmux 窗口(tmux需要相关配置)

tmux 配置：

```sh
# Use Alt-arrow keys without prefix key to switch panes
# 这里使用 option + 方向选择 tmux 窗口，当然如果觉得不适宜还可以使用 Karabiner 修改别的映射到 option+方向键
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
# 使用 shift + up/down 来切换 window。我把 right_command + jk 映射到了 left_shift + up/down
bind -n S-Up  previous-window
bind -n S-Down next-window
```

tmux移动窗口比较频繁，我修改成了 options+方向键，但是 left_option 同样不好盲打，我改成了 right_command+wasd 映射到
left_option+方向键，这样移动 tmux 窗口就可以用 right_command + wasd了，解放了双手。

Item2 配置：
Iterm2 可以增加绑定，比然我自己使用 left_command + jk 来左右切换窗口。(keys->key bindings)

目前使用 hhkb (iterm2+oh-my-zsh+neovim+tmux) 操作手指完全集中在主键盘区，增加了编辑效率，基本实现了无鼠标编程。

# 参考：

- https://github.com/tekezo/Karabiner-Elements
- https://www.jianshu.com/p/47d5de7f12bc
- https://madogiwa.github.io/KE-complex_modifications/
