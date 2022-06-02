#!/bin/bash

echo "1.在Test.m文件里搜索weak关键字"
grep weak Test.m


echo "2.在Test可执行文件的符号表中搜索weak关键字"
nm -pa Test | grep weak


echo "3.测试路径中包含空格的情况(三种方法):"

echo "3.1.使用转义字符:"
# 双横线--，表示选项结束，后面的部分都会被认为是参数了，而不再是前面的命令选项
grep weak --color=auto -- ../01.查找\ API/test.m

echo "3.2.使用双引号:"
grep weak --color=auto -- "../01.查找 API/test.m"

echo "3.3.使用单引号:"
grep weak --color=auto -- '../01.查找 API/test.m'

echo '3.4.错误方法：使用双引号和转义字符，\被识别为普通字符'
# grep weak --color=auto -- "../01.查找\ API/test.m"
# grep: ../01.查找\ API/test.m: No such file or directory

echo '3.5.错误方法：使用单引号和转义字符，\被识别为普通字符'
grep weak --color=auto -- '../01.查找\ API/test.m'
# grep: ../01.查找\ API/test.m: No such file or directory
