#!/bin/bash -x

for file in `ls -p *.log.1`
do
	fileName=`echo $file | awk -F. '{print $1}'`;
	extention=`echo $file | awk -F. '{print $2}'`;
	dd=`date +%d`
	mm=`date +%m`
	yy=`date +%Y`
	date="$dd$mm$yy"
	renameFile=`echo "$fileName-$date"`
	echo $renameFile
	if [ -f $file ]
	then
		mv $file $renameFile.$extention
	fi
done
