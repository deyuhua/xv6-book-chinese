<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [实验](#实验)
    - [环境资源下载：](#环境资源下载：)
    - [交叉编译工具链](#交叉编译工具链)
    - [编译启动内核](#编译启动内核)
    - [代码阅读顺序](#代码阅读顺序)

<!-- markdown-toc end -->

# 实验

## 环境资源下载：

1. [Ubuntu系统镜像下载](https://www.ubuntu.com/download)
2. [VirtualBox虚拟机下载](https://www.virtualbox.org/wiki/Downloads)

## 交叉编译工具链

```bash
## install basic package for ubntu
sudo apt-get install git gcc make qemu wget m4

## clone this repo
cd ~ && git clone --recursive https://github.com/deyuhua/xv6-book.git

## 下载速度偏慢，最好使用代理
cd ~/xv6-book/build && wget -i pkg.txt 

## 交叉编译
./install.sh
echo export PATH=~/xv6-book/build/local/bin:$PATH >> ~/.bashrc
echo export LD_LIBRARY_PATH=~/xv6-book/build/local/lib >> ~/.bashrc

## 这步非常重要，主要是设置环境变量
source ~/.bashrc && sudo ldconfig
```

## 编译启动内核

```bash
## compile xv6
cd ~/xv6-book/xv6-public && make

## start qemu simulator
make qemu # (with xwindow, or start without xwindow: make qemu-nox)

```

## 代码阅读顺序

待更新

<meta name='keywords' content='Xv6, mit, operation system, unix v6, qemu'>
