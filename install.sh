#!/bin/bash
#author:flitrue

echo ""

if [ "$1" != "" ]
then

# 全局安装
echo "> npm i -g ${1}"
npm i -g $1


# 写入文件
file="data.json"
i=0 # 统计模块数量
isexist=0 # 文件中是否存在模块
for var in `cat $file |jq .modules[]`
do
  if [ $var = \"$1\" ]
  then
    isexist=1
    break
  else
    str[i]=$var
    i=$i+1
  fi
done

if [ $isexist = 0 ] # isexist start
then

leg=${#str[@]}-1

echo "{">$file
echo -e '\t"modules": ['>>$file
for i in ${str[@]}
do
  if [ $i != $leg ]
  then
    echo -e "\t\t$i,">>$file
  else
    echo -e "\t\t$i">>$file
  fi
done

echo -e '\t\t"'$1'"'>>$file

echo -e "\t]">>$file
echo "}">>$file
echo "> Writing to data.json File..."
fi # isexist end

echo "> Success"

else

echo "Usage: bash install <module_name>"
echo "请添加后重新执行！"

fi