#!/bin/bash -x

envin=`env | echo $USERSECRET`

if [ $envin ]
then
	USERSECRET="dH34xJaa23"
	echo "found"
fi
