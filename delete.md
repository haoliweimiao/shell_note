# Delete

### 内容
+ [递归删除文件](#递归删除文件)
+ [递归删除目录](#递归删除目录)

## 递归删除文件
示例
~~~ shell
find . -name "*.o"  | xargs rm -f
find . -name "*._*"  | xargs rm -f
~~~
可以通过管道命令来操作，先find出主目录 下想删除的文件，
然后通过“xargs”这个构造参数列表并运行命令。
~~~ shell
find named/ -name *.bak | xargs rm -f
~~~

## 递归删除目录
目录的话，需要添加 -r

示例
~~~ shell
find . -name "Build"  | xargs rm -rf
~~~ 