#!/bin/bash
# 变量
# 注意，变量名和等号之间不能有空格，这可能和你熟悉的所有编程语言都不一样。同时，变量名的命名须遵循如下规则：
# 命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
# 中间不能有空格，可以使用下划线（_）。
# 不能使用标点符号。
# 不能使用bash里的关键字（可用help命令查看保留关键字）。

yourname='von'
#输出 $yourname
echo "${yourname}"
# 输出${yourname}
echo '${yourname}'

# for file in $(ls /etc)
# do
# echo "$file"
# done

# 变量引用花括号可选，适用于以下情况
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done

# 只读变量
myUrl="http://www.google.com"
readonly myUrl
# 下句报错 myUrl: readonly variable
# myUrl="http://www.runoob.com"

# 删除变量
deleteVar="http://www.google.com"
unset deleteVar
# 无输出
echo $deleteVar



# 变量类型
# 运行shell时，会同时存在三种变量：
# 1) 局部变量 局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# 3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行