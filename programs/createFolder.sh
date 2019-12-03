#!/bin/bash -x
echo "Enter folder name"

read folderName

if [ -d $folderName ]
then
	echo "folder already exist"
else
	mkdir $folderName
	echo "folder created with name '$folderName'"
fi
