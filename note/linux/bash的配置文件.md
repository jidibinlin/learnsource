# bash的配置文件
### 按生效范围划分，存在两类
** 1、全局配置**
* /etc/profile
    * /etc/profile.d/*.sh
* /etc/bashrc

** 2、个人配置**
* ~/.bash_profile
* ~/.bashrc

### 按功能划分, 存在两类
** 1、profile类: 为交互式登录的shell提供配置 **
** 2、bashrc类: 为非交互式登录的shell提供配置 **

# shell登录:
** 交互式登录 **
* 直接通过终端输入账号密码登录
* 使用"su - username" 或 "su -l username" 切换的用户
* 配置文件加载顺序: /etc/profile --> /etc/profile.d/*.sh --> ~/.bash_profile --> ~/.bashrc --> /etc/bashrc

** 非交互式登录 **
* su username
* 图形界面下打开的终端
* 执行脚本
* 配置文件加载顺序:~/.bzshrc --> /etc/bashrc --> /etc/profile.d/*.sh

# bash中的算术运算符
** +, -, \*, /, %, \*\*(次方) **
** 实现算术运算 **
* (1) let var=arithmetic expression
* (2) var=$[arithmetic expression]
* (3) var=$((arithmetic expression))
* (4) var=$(expr arg1 arg2 arg3....)  
> 乘法符号在有写场景需要转义  
> bash中的随即书生成器: $RANDOM

## 条件测试:
** 判断某需求是否满足, 需要由测试机制来实现 **
> Note: 专用的测试表达式需要由测试命令辅助完成测试过程

** 测试命令 **
* test EXPRESSION
* [ EXPRESSION ]
* [[ EXPRESSION ]]  
> Note: EXPRESSION前后必须有空白字符

** bash的测试类型 **
* 数值测试
    * -gt: 是否大于
    * -ge: 是否大于等于
    * -eq: 是否等于
    * -ne: 是否不等于
    * -lt: 是否小于
    * -le: 是否小于等于

* 字符串测试
    * ==: 是否等于
    * >: 是否大于
    * <: 是否小于
    * !=: 是否不等于
    * =~: 左侧字符串是否能够被右侧的PATTERN所匹配  
        > Note: 此表达式一般作用于[[  ]]中
    * -z "STRING": 测试字符传是否为空，空则为真，不空则为假
    * -n "STRING": 测试字符是否不空，不空则为真，空则为假  
    > Note: 用于字符串比较时的操作数都应该使用引号
* 文件测试

# bash中自定义退出状态码
** exit [n] **
