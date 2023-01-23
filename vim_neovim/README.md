# docker vim

基于 docker 和 neovim/vim8 打造一个便于移植的 vim 开发环境。
目前 vim 各种插件依赖比较多，比如 python 和 nodejs 还有各种依赖库，基于 docker 构建一个 vim 开发环境

### 使用方式

```sh
cd docker_vim
docker build -t dvim
```

# vim 插件

### vim-projectionist

把 projections.json 放到当前项目根目录 .projections.json。
然后使用 `:A` 可以在对应的文件跳转，比如 go 的 interface 文件和 impl 实现文件。
类似 cpp 里使用 a.vim 在头文件和 cpp 文件快速跳转。

- https://medium.com/aaron-renner/navigating-vim-projects-like-a-boss-81c808328807


# mac vim 中文输入切换问题
vim 中文输入法在切换到 normal 模式的时候比较麻烦，还需要切换输入法。可以使用 smart-im 插件解决。

https://github.com/ybian/smartim

如果不想使用插件，也可以按照如下方式解决：

1. 安装命令行工具 im-select。 https://github.com/daipeihust/im-select

brew tap daipeihust/tap && brew install im-select

2. vim 配置增加如下配置：`autocmd InsertLeave * :silent !/usr/local/bin/im-select com.apple.keylayout.ABC`
