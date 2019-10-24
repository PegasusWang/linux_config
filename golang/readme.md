# vim-go 配置

vim-go 现在使用 golangci-lint，废弃 gometalinter。请使用 golangci.yml 配置

```json
{
  "Exclude": ["exported \\w+ (\\S*['.]*)([a-zA-Z'.*]*) should have comment or be unexported"]
}
```

- https://github.com/golang/lint/issues/186
- https://github.com/golangci/golangci-lint
