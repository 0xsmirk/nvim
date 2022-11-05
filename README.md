# NEOVIM配置

> 基于AstroNvim的项目重构自己的相关需求
> 国内建议使用全局代理

## 0x01.环境依赖

- windows&Linux平台相关依赖:
    - neovim >=0.8.0
    - lua
    - gcc
    - [?] python >=3.7.0
    - [?] nodejs >=16.x

## 0x02.安装

依赖安装:
- windows: ./depends/windows/
- linux: ./depends/linux/

- [x] Windows安装文档:./depends/windows/Install.md
- [ ] Linux安装文档:./depends/linux/Install.md


## 0x03.hosts问题

由于国内的DNS污染问题，自动安装neovim插件的插件下载失败，这里需要在hosts文件中添加如下DNS:

- Windows的hosts文件地址：C:\Windows\System32\drivers\etc
- Linux下plugins_depend.sh中已添加自动化配置hosts

```text
199.232.68.133 raw.githubusercontent.com
199.232.68.133 user-images.githubusercontent.com
199.232.68.133 avatars2.githubusercontent.com
199.232.68.133 avatars1.githubusercontent.com
```
