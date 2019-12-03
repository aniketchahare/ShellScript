#!/bin/bash -x

for file in `ls /var/log/*.log`
do
	echo $file
	count=`cat $file | grep -v / | grep -c "systemd"`
	echo "$file--> $count"
done
