#!/bin/bash
output="/tmp/backup_`date +%Y%m%d`"
mkdir $output
path="/home/master/.bash_logout"
echo "cp -r  /home/master/ $output" >> $path

#echo "rsync -r  /home/master/ $output" >> $path
