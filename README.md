<!--
  Title: Xv6 book
  Description: 现代X86版本的unix v6的教学操作系统
  Author: deyuhua@gmail.com
  -->

# Xv6操作系统
Xv6是由麻省理工学院(MIT)为[操作系统工程](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-828-operating-system-engineering-fall-2012/index.htm)的课程开发的以教学目的的操作系统。Xv6是在x86处理器上(x即指x86)用ANSI标准C重新实现的Unix第六版(Unix V6，通常直接被称为V6)。

## Xv6设计灵感来源
Unix系统最早由KenThompson、Dennis Ritchie和Douglas McIlroy在贝尔实验室开发的操作系统，而现代广泛使用的Linux、Mac OS X、OpenBDS和FreeBSD都是类unix系统；但是unix v6在数字设备公司(DEC)的PDP-11机器上运行，与现在使用的x86架构不同。

莱昂氏unix源代码分析由上下两篇组成，上篇为Unix v6源代码，下篇是莱昂先生对Unix操作系统源代码的详细分析。该书简洁、透彻，曾作为未公开出版物广泛流传了二十多年（主要是许可问题，但是只允许作为大学课程使用），是一部杰出的经典之作，为操作系统hacker了解系统运行原理提供了非常好的途径。莱昂氏源码分析也是xv6的灵感来源，书籍形式和莱昂氏unix源码分析完全相同，但是xv6是在X86机器上的现代实现，并添加了多核支持，因此非常适合学习操作系统的基本原理；

我翻译这本书籍，主要是想把这本现代版本的莱昂氏源码分析介绍给更多有爱好者，共同提高和进步，翻译难免会有不准确或者错误之处，希望大家能够提issue或者fork，让我们共同完善和丰富操作系统的资料。

## Xv6书籍翻译计划

1. 第零章：[操作系统接口(Operating system interfaces)](https://github.com/deyuhua/xv6-book/blob/master/book/zh/chap00.md)
2. 第一章：[操作系统结构(Operating system orgnization)](https://github.com/deyuhua/xv6-book-chinese/blob/master/book/zh/chap01.md)
3. 第二章：分页表(Page tables)[4.17更新]
4. 第三章：陷阱、中断与驱动(Traps, interrupts, and driver)[4.24更新]
5. 第四章：锁(Locking)[5.1更新]
6. 第五章：调度(Scheduling)[5.8更新]
7. 第六章：总结(Summary)[5.15更新]
8. 附录A: PC硬件(PC hardware)[5.15更新]
9. 附录B：引导程序(the boot loader)[5.22更新]

## 操作系统的相关资料：

1. [Unix家族的维基百科资料](https://zh.wikipedia.org/wiki/UNIX；)
2. Linux内核学习的书籍和资料：
   - [《Linux内核设计与实现》](https://book.douban.com/subject/5503292/);
   - [《深入理解Linux内核》](https://book.douban.com/subject/1767120/);
   - [《Linux设备驱动程序》](https://book.douban.com/subject/1420480/);
3. 莱昂氏源码分析的资料：
   - [莱昂氏源码注解](http://www.lemis.com/grog/Documentation/Lions/)
   - [Unix v6源码主页](http://v6.cuzuco.com/)
4. **Xv6书籍和源码PDF版本**
   - [Xv6-book](./book/en/book-rev9.pdf)
   - [Xv6源码PDF版本](./book/en/xv6-rev9.pdf)
5. [MIT操作系统工程最新课程计划](https://pdos.csail.mit.edu/6.828/2016/schedule.html)


## 安装与编译
本文档中Xv6主要是在Ubuntu的虚拟机环境中编译、调试，VMWare或者VirtualBox(免费)都是是不错的选择，在MacOS下可以使用VMWare Fusion。

### 环境资源下载：

1. [Ubuntu系统镜像下载](https://www.ubuntu.com/download)
2. [VirtualBox虚拟机下载](https://www.virtualbox.org/wiki/Downloads)

### 交叉编译工具链

```bash
# install basic package for ubntu
sudo apt-get install git gcc make qemu wget m4

# clone this repo
cd ~ && git clone --recursive https://github.com/deyuhua/xv6-book.git

# 下载速度偏慢，最好使用代理
cd ~/xv6-book/build && wget -i pkg.txt 

# 交叉编译
./install.sh
echo export PATH=~/xv6-book/build/local/bin:$PATH >> ~/.bashrc
echo export LD_LIBRARY_PATH=~/xv6-book/build/local/lib >> ~/.bashrc

# 这步非常重要，主要是设置环境变量
source ~/.bashrc && sudo ldconfig
```

### 编译启动内核

```bash
# compile xv6
cd ~/xv6-book/xv6-public && make

# start qemu simulator
make qemu # (with xwindow, or start without xwindow: make qemu-nox)

```

## 代码阅读顺序

待更新



<meta name='keywords' content='Xv6, mit, operation system, unix v6, qemu'>
