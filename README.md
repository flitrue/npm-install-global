# npm-install-global

> 根据需要全局安装npm包

## 简介

当我们使用`nvm`管理`node`时，切换`node`版本时，安装在全局的`npm`包无法共用之前`node`版本中安装在全局的`npm`包，这时会让人很头痛，需要重新下载所有的全局模块。也许你可能这么做：

- 添加`npm`配置，设置共用的`prefix`（执行`npm config set prefix "***"`）

但是，这样是不行的，会提示nvm与npm配置`prefix`不兼容，

```
nvm is not compatible with the npm config "prefix" option...
```

Q：难道没有其他办法了吗？
A：是的，就连`nvm`官方都没有办法

## 使用

将需要全局安装的模块名写到`data.json`中，切换`node`版本时一键安装所有的模块

```
bash index.sh
```


## TODO

 [] 每次全局安装一个模块时，同步到`data.json`中
 [] 可以注册一个全局使用的命令，实现上一个任务

## 最后

这次本人想到的思路，如果有更好的思路欢迎[issue]()