#!/bin/bash

input="/home/master/IpList"
output="/home/master/script7_`date +%Y%m%d`"

while read line 
do
	ping -c 1 $line >> /dev/null
	if [ $? -eq 0 ];then
		echo "$line is ok" >>  $output
                #echo "$line is ok" | tee -a  $output
        else
		echo "$line is NOt ok" >>  $output
	fi
done < $input	
