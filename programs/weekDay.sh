#!/bin/bash -x

read -p "Enter week number--> " weekNum

weekNumLength=`echo -n $weekNum | wc -c`

if [ $weekNumLength -le 1 ]
then
	if [ $weekNum -eq 1 ]
	then
		echo "Sunday"
	elif [ $weekNum -eq 2 ]
	then
		echo "Monday"
	elif [ $weekNum -eq 3 ]
	then
		echo "Tuesday"
	elif [ $weekNum -eq 4 ]
	then
		echo "Wednesday"
	elif [ $weekNum -eq 5 ]
	then
		echo "Thursday"
	elif [ $weekNum -eq 6 ]
	then
		echo "Friday"
	elif [ $weekNum -eq 7 ]
	then
		echo "Saturday"
	else
		echo "Please enter value between 1-7."
	fi
else
	echo "Please enter value between 1-7."
fi
