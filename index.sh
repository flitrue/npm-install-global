#!/bin/bash
#author:flitrue

file="data.json"
str="npm i -g "

for var in `cat $file |jq .modules[] | sed 's/\"//g'`
do
str="$str""$var "
done

echo ""
echo "> $str"
$str