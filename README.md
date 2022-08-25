# NEOVIM配置

## 0x01.环境依赖

- windows&Linux平台依赖:
    - neovim >=0.8.0
    - python >=3.7.0
    - nodejs >=16.x
- python依赖：
    -  pynvim: pip3 install pynvim

## 0x02.hosts问题

由于国内的DNS污染问题，自动安装neovim插件的插件下载失败，这里需要在hosts文件中添加如下DNS:

- Windows的hosts文件地址：C:\Windows\System32\drivers\etc
- Linux下plugins_depend.sh中已添加自动化配置hosts

```text
199.232.68.133 raw.githubusercontent.com
199.232.68.133 user-images.githubusercontent.com
199.232.68.133 avatars2.githubusercontent.com
199.232.68.133 avatars1.githubusercontent.com
```
