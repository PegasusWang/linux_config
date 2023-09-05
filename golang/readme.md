# vim-go 配置

vim-go 现在使用 golangci-lint，废弃 gometalinter。请使用 golangci.yml 配置

```json
{
  "Exclude": ["exported \\w+ (\\S*['.]*)([a-zA-Z'.*]*) should have comment or be unexported"]
}
```

- https://github.com/golang/lint/issues/186
- https://github.com/golangci/golangci-lint


# mac 安装指定版本go

使用 brew 默认安装最新版本，但是公司的构建机器上可能还是用的老版本。
如果用的版本和公司构建机器不一致，可能有一些细微的差别导致构建失败（比如新版本的函数不存在、泛型不支持等）。
这个时候需要安装和构建机器一样的go版本(你的本地开发版本最好和公司构建机器保持一致，然后跨平台编译就可以在你的 mac build)

这个网址可以搜到你需要的 go 版本安装包列表： https://go.dev/dl/

```
wget https://go.dev/dl/go1.16.15.darwin-amd64.tar.gz
tar -zxvf go1.16.15.darwin-amd64.tar.gz
sudo mv go /usr/local/go
```

然后修改你的 .bashrc/.zshrc

```sh
export GOROOT="/usr/local/go"
export GOPATH=$HOME/work    # don't forget to change your path correctly!
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
```

还可以装一下 1.16.15 支持的 lint 工具

```
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.41.1
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.49.0
```

# debian 安装指定版本 golang

```sh
wget https://dl.google.com/go/go1.16.15.linux-amd64.tar.gz
tar -zxvf go1.16.15.linux-amd64.tar.gz
sudo mv go /usr/local/go
```

```sh
# 环境变量配置写到你的 .zshrc
export GOROOT="/usr/local/go"
export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
```

# mac 安装go1.18

```sh
wget https://go.dev/dl/go1.18.10.darwin-amd64.tar.gz
tar -zxvf go1.18.10.darwin-amd64.tar.gz
sudo mv go /usr/local/go

# install linter
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.47.3
```
