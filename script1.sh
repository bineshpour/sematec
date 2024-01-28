read -p "pleas enter number: " var1
 
     if [ $var1 -gt 10 ];then
	     echo "larger than 10"
	elif [ $var1 -eq 10 ];then
	     echo "equal to 10"
     else
	echo "less than 10"
     fi	
