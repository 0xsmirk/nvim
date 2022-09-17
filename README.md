# NEOVIM配置

## 0x01.环境依赖

- windows&Linux平台依赖:
    - neovim >=0.8.0
    - python >=3.7.0
    - nodejs >=16.x
- python依赖：
    -  pynvim: pip3 install pynvim

## 0x02.安装

windows下安装的步骤如下：
1. 在当前用户的%APPDATA%/Local下克隆当前项目
2. 根据用于自己的用户名改修init.vim中第3行，第4行，第243行的用户改自己的用户
3. 参考下面hosts问题修改当前用户的hosts
4. 终端下运行nvim，则会自动安装相关插件及配置

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