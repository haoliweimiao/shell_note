
#!/bin/bash
#define path variables
#by haoliwei

folder="$PWD/test"
file="$PWD/test.txt"

#如果文件夹不存在，创建文件夹
if [ ! -d "$folder" ]; then
  mkdir "$folder" 
fi

#shell判断文件,目录是否存在或者具有权限

# -x 参数判断 $folder 是否存在并且是否具有可执行权限
if [ ! -x "$file" ]; then
  touch "$file"
fi

# -d 参数判断 $folder 是否存在
if [ ! -d "$folder" ]; then
  mkdir "$folder"
fi

# -f 参数判断 $file 是否存在
if [ ! -f "$file" ]; then
  touch "$file"
fi

# -n 判断一个变量是否有值
if [ ! -n "$var" ]; then
  echo "$var is empty"
#   exit 0
fi

# 判断两个变量是否相等
if [ "$var1" = "$var2" ]; then
  echo '$var1 eq $var2'
else
  echo '$var1 not eq $var2'
fi