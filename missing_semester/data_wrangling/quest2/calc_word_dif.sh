#!/bin/bash

 #输出所有的词尾组合并按照字母排序
 cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | awk -F "a" '{print NF-1,$0}' | awk -F " " '$1>=3 && $2 ~ /^.*[^s]$/ {print $2}' | sed -E 's/.*([a-z]{2})/\1/' | sort | uniq  
