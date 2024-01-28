#/!bin/bash

read -p "plase enter user name : " user
read -p "plase enter pasword : " password
read -p "plase enter ip : " ip
echo "user name : ${user} , password : ${password} , ip : ${ip}"


ping -c 1 $ip >> /dev/null

if [ $? -eq 0 ];then
	echo "successfully"
	#scp /etc/passwd  ${user}@${ip}:/home/${user} 
	sshpass -p ${password} scp -v  /home/master/ip.txt  ${user}@${ip}:/home/${user}

else
	echo "server is NOT reachable"
fi	
