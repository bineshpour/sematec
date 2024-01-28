#!/bin/bash

read -p "count of your number: " COUNT

for ((i=1;i<=$COUNT;i++))
do

 read -p "Plase enter $i number : " var

 if [ $i -eq 1 ];then
	 MIN=$var
	 MAX=$var
 fi

 if [ $var -gt $MAX ];then
         MAX=$var

 elif [ $var -lt $MIN ];then
	 MIN=$var
 fi

 sum=$[${sum}+${var}]
 
 avg=$[${sum}/${COUNT}]
done

echo "min is  $MIN , max is $MAX , sum is $sum , average is $avg"
