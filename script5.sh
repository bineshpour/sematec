#!/bin/bash

output="/home/master/passwd_`date +%Y%m%d`"

cut -d ":" -f 1,3 /etc/passwd > $output

find /home/master/passwd* -type f  -mtime +2 -exec rm {} \;
