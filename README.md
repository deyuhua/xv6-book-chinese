<!--
  Title: Xv6 book
  Description: 现代X86版本的unix v6的教学操作系统
  Author: deyuhua@gmail.com
  -->

# Xv6操作系统源代码分析
Xv6是由麻省理工学院(MIT)为[操作系统工程](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-828-operating-system-engineering-fall-2012/index.htm)的课程开发的以教学目的的操作系统。Xv6是在x86处理器上(x即指x86)用ANSI标准C重新实现的Unix第六版(Unix V6，通常直接被称为V6)。

## Xv6与莱昂氏unix源码分析的异同
莱昂氏unix源码分析是对unix v6版本的源码做注解，以便学生能够很好的了解操作系统的运行原理；unix系统最早由KenThompson、Dennis Ritchie和Douglas McIlroy在贝尔实验室开发的，现在OpenBDS， FreeBSD，、MacOS和Linux都是类unix系统；但是unix v6的源码是运行PDP-11机器上，与现在主流使用的x86架构不同，因此Xv6提供更好的学习内核的机会，并在v6的基础上对多核的支持；

Unix系统的相关资料：

1. [Unix家族的维基百科资料](https://zh.wikipedia.org/wiki/UNIX；)
2. Linux内核学习的书籍和资料：
   - [《Linux内核设计与实现》](https://book.douban.com/subject/5503292/);
   - [《深入理解Linux内核》](https://book.douban.com/subject/1767120/);
   - [《Linux设备驱动程序》](https://book.douban.com/subject/1420480/);
3. 莱昂氏源码分析的资料：
   - [莱昂氏源码注解](http://www.lemis.com/grog/Documentation/Lions/)
   - [Unix v6源码主页](http://v6.cuzuco.com/)
4. [Xv6的最新课程计划](https://pdos.csail.mit.edu/6.828/2016/schedule.html)


## 安装与编译
本文档中Xv6主要是在Ubuntu的虚拟机环境中编译、调试，VMWare或者VirtualBox(免费)都是是不错的选择，在MacOS下可以使用VMWare Fusion；

### 环境安装资源下载：

1. [Ubuntu系统镜像](https://www.ubuntu.com/download)
2. [VirtualBox虚拟机软件下载](https://www.virtualbox.org/wiki/Downloads)


### 交叉编译、启动模拟器(TODO:该步骤需要验证)

```bash
# install basic package for ubntu
sudo apt-get install git gcc make qemu wget

# clone this repo
cd ~ && git clone --recursive https://github.com/deyuhua/xv6-book.git

# download source code list in build/pkg.txt
cd ~/xv6-book/build && ./download.sh # 最好使用代理，速度非常的慢, 如果不能自动下载，使用浏览器下载好放置到该

# cross compile
make
echo export PATH=~/xv6-book/build/local/bin:$PATH >> .bashrc

# compile xv6
cd ~/xv6-book/xv6-public && make

# start qemu simulator
make qemu # (with xwindow, or start without xwindow: make qemu-nox)

```

## 本Repo包含的主要资料
1. Xv6-book中文版(TODO)；
2. Xv6源码中文解析(TODO)；
3. Xv6的运行环境配置和脚本;


<meta name='keywords' content='Xv6, mit, operation system, unix v6, qemu'>
