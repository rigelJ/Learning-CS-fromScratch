#!/usr/bin/env bash

###############code from quest 3#########################


#create new file and init

std_path=/tmp/std.out
error_path=/tmp/error.out

#start checking 

count=0

while [[ "$?" -eq 0 ]]; 
do
((count++))
./failscript.sh >> $std_path 2>>$error_path 
done


#print the std info and error info,then del them 
echo $(cat $std_path)
echo $(cat $error_path)

rm /tmp/std.out
rm /tmp/error.out


#print times
echo "it took $count trails to get an error"







