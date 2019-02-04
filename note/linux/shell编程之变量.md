# bash中的变量的种类
* 本地变量: 生效范围为当前shell进程，对当前shell之外的其他shell进程，包括当前shell的子进程均无效
* 环境变量: 生效范围为当前shell进程及其子进程
* 局部变量: 生效范围为当前shell进程中某代码片段(通常指函数)
* 位置变量: \$1,\$2.....来表示用于让脚本在代码中调用通过命令行传递给它的参数
* 特殊变量: \$?,\$0,\$*,\$@,\$#

# 变量引用:
* \${name},\$name
    * "": 弱引用，其中的变量引用会被替换为变量值
    * '': 强引用，其中的变量引用不会被替换为变量值, 而保持原字符串

# 变量赋值: 
* name='value'
* 使用引用
    * 变量引用: name="$username"
    * 命令引用: name=`COMMAND`, name=$(COMMAND)

# 显示和销毁变量
* 显示已定义的所有变量
    * set 
* 销毁变量
    * unset name 

# 环境变量
** 变量声明 **
* export name=value
* declare -x name=value

** 变量引用 **
* \$name
* \${name}

** 显示所有环境变量 **
* export 
* env
* printenv

** 销毁 **
* unset name

** bash中的内建环境变量 **
* PATH,SHELL,UID,HISTSIZE,HOME,PWD,OLD,HISTFILE,PS1

# 只读变量:
** 声明 ** 
* readonly name=value
* declare -r name=value

# 位置变量：

* $1,$2....分别对应调用第1、第2等参数
* 轮岗: shift [n]
* $0: 命令本身
* $*: 传递给脚本的所有参数(一个字符串)
* $@: 传递给脚本的所有参数(-个参数一个字符串)
* $#: 参数个数
