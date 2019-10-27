# mac 使用 Karabiner-Elements  改键配置(键位不爽我就修改它)

首先安装 Karabiner-Elements 。然后配置文件放置位置在

~/.config/karabiner/assets/complex_modifications/wasd.json

- wasd.json: use right_command + WASD as arrow key
- page_up_down.json: use left_command + [ ] as page_up and page_down
- command_jk_copy.json: use right_command + j/k as command + c/v
- alt_arrow_to_alt_hjkl.json: use alt + hjkl to alt + arrow, so I can use alt+hjkl select tmux pane
- right_command_arrow_to_alt_hjkl.json: use alt + hjkl to alt + arrow, so I can use alt+hjkl select tmux pane

这里我把 right_command + WASD 修改成上下左右，command + [] 翻页， right_command+jk 复制粘贴,
right_command + hjkl 移动 tmux 窗口(tmux需要相关配置)

从而可以让所有操作手指完全集中在主键盘区，增加编辑效率。

# 参考：

- https://github.com/tekezo/Karabiner-Elements
- https://www.jianshu.com/p/47d5de7f12bc
- https://madogiwa.github.io/KE-complex_modifications/

