# Vim

## 插件管理

使用 Vim 8 自带插件管理功能管理插件

使用 LibTerm 或 Textastic 创建 vim 文件夹，在 vim 文件夹内创建 pack 文件夹，在 pack 文件夹内创建任意名称文件夹（以 ivim 为例），在 ivim 文件夹内创建 opt 和 start 文件夹

```shell
cd $HOME
mkdir vim/pack/ivim/opt
cd vim/pack/ivim/
mkdir start
```



使用 LibTerm 的 ln 命令

```shell
cd $HOME
rm -rf .vim
ln -s vim .vim
```

修改 .vimrc 文件内容

```vim
source ~/vim/vimrc
```

## 同步 vim 文件夹



使用 Working Copy 的 Directory Sync 功能，将 vim 文件夹与 repo 同步。

目前 Working Copy 只支持将整个 repo 与外部文件夹同步，所以最好单独设置 vim 专属的 repo。

如果想要和其他文件一同管理，比如 dotfiles/vim ,可以将单独的 vim repo 作为子模块引入到 dotfiles repo 中。

