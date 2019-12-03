#!/bin/bash -x

ls

if [ $? -eq 0 ]
then
	echo "Successfully executed"
else
	echo "command not found"
fi


