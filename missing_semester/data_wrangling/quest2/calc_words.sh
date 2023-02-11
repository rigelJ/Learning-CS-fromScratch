
#!/bin/bash

 #计算出现频率前三的末尾字母
 cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | awk -F "a" '{print NF-1,$0}' | awk -F " " '$1>=3 && $2 ~ /^.*[^s]$/ {print $2}' | sed -E 's/.*([a-z]{2})/\1/' | sort | uniq -c | sort -n | tail -n3
