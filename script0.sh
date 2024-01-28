#!/bin/bash

read -p "Plase enter your IP: " IP
echo "${IP}"  > /root/ip.txt

#OCT1= cut -d "." -f 1 ~/ip.txt
#OCT2= cut -d "." -f 2 ~/ip.txt
#OCT3= cut -d "." -f 3 ~/ip.txt
#OCT4= cut -d "." -f 4 ~/ip.txt

for ((i=1;i<=4;i++))
do
	OCT=`cut -d "." -f $i /root/ip.txt`
	if [ ${OCT} -ge 0 ] && [ ${OCT} -le 255 ];then
        	echo "ok"
	else 
		echo "notok"
		read -p "Octet $i is wrong, Plase enter the value between 0 and 255: " IP 
	 	echo "${IP}" > /root/ip.txt
	 	i=1
	fi
done

ping -c 1 $IP >> /dev/null
 
if [ $? -eq 0 ];then
       echo "Server is reachable"
else
       echo "Server is NOT reachable"
fi

