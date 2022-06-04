#!/bin/sh

## 变量的定义

# 执行算术表达式，使用expr
expr 1+2              # 输出"1+2"，数字之间没有空格默认是字符串
expr 1 + 2            # 输出3
RESULT=`expr 1 + 2`   # 如果不加反引号会报错：command not found
echo $RESULT

# 指定变量类型
declare -i a=3 b=4 c  # 使用-i声明变量为整型
c=a+b
echo $c   
declare -p c          # 打印变量类型：declare -i c="7"

# 测试export
echo $PATH
export a b=3          # 导出环境变量
export -n a b         # 取消导出

# 测试set、eval
echo "Shell所有参数通过空格区分:"
set 11 22 33 44 55
echo "$@"             # 取上个命令的所有参数
echo "$#"             # 取上个命令的参数个数
echo $1               # 取上个命令的第一个参数
echo "\$$#"           # 取上个命令的最后一个参数(错误)
eval echo "\$$#"      # 取上个命令的最后一个参数(正确)

# 测试通配符

## 测试只读变量
# myUrl="https://www.google.com"
# readonly myUrl
# myUrl="http://www.baidu.com"
