#!/bin/bash
# get all filename in specified path
#by haoliwei


function printFileName(){
   echo $1;
}

# string is null?
function isNullStr() {
   if [ "$1" =  "" ]; then
        return 1;
    else
        return 0;
    fi
}

function isMarkDownFile(){
    # 判断是否以.md结尾，即为md文件
    result=$(echo $1 | grep ".md$") 
    if [ -n "$result" ]; then
        return 1;
    else
        return 0;
    fi
}

path=$1
files=$(ls $path)

for filename in $files
do
#    echo $filename
#    printFileName $filename
   isMarkDownFile $filename
   isMDFile=$?
   echo "$filename is md file: $isMDFile"
done

