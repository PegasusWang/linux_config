 # vim-go 配置

 vim-go 使用 gometalinter 可以忽略一些lint 提示。用户目录或者项目目录新增 .gometalinter.json 文件


```json
{
  "Exclude": ["exported \\w+ (\\S*['.]*)([a-zA-Z'.*]*) should have comment or be unexported"]
}
```

- https://github.com/golang/lint/issues/186
- https://github.com/alecthomas/gometalinter
