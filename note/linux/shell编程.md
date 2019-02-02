# shell脚本: 文本文件
** 在shell脚本的开头要指明调用的解释器**
* bash: #!/bin/bash
* python: #!/usr/bin/python
* perl: !/usr/bin/perl

# 运行脚本的方式
* 1、给予执行权限，通过具体文件的路径指定文件执行
        ./scriptname
* 2、直接运行解释器，将脚本作为解释器程序的参数运行
        bash scriptname

# 变量
** shell脚本是弱类型的语言 将所有存储的数据统统当作字符执行 不支持浮点数**
