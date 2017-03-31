# Xv6操作系统源代码分析
Xv6是由麻省理工学院(MIT)为[操作系统工程](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-828-operating-system-engineering-fall-2012/index.htm)的课程开发的以教学目的的操作系统。Xv6是在x86处理器上(x即指x86)用ANSI标准C重新实现的Unix第六版(Unix V6，通常直接被称为V6)。

## Xv6与莱昂氏unix源码分析的异同
莱昂氏unix源码分析是对unix v6版本的源码做注解，以便学生能够很好的了解操作系统的运行原理；unix系统最早由KenThompson、Dennis Ritchie和Douglas McIlroy在贝尔实验室开发的，现在OpenBDS， FreeBSD，、MacOX和Linux都是类unix系统；但是unix v6的源码是运行PDP-11机器上，与现在主流使用的x86架构不同，因此Xv6提供更好的学习内核的机会，并在v6的基础上对多核的支持；

Unix系统的相关资料：

1. [Unix家族的维基百科资料](https://zh.wikipedia.org/wiki/UNIX；)
2. Linux内核学习的书籍和资料：
   - [《Linux内核设计与实现》](https://book.douban.com/subject/5503292/);
   - [《深入理解Linux内核》](https://book.douban.com/subject/1767120/);
   - [《Linux设备驱动程序》](https://book.douban.com/subject/1420480/);
3. 莱昂氏源码分析的资料：
   - [莱昂氏源码注解](http://www.lemis.com/grog/Documentation/Lions/)
   - [Unix v6源码](http://v6.cuzuco.com/)

## 本Repo包含的主要资料
1. Xv6源码中文解析；
2. Xv6-book中文版；
3. Xv6的运行环境配置和脚本;

## 安装与编译
本文档中Xv6主要是在Ubuntu的虚拟机环境中编译、调试，VMWare或者VirtualBox(免费)都是是不错的选择，在Max下可以使用VMWare Fusion；
