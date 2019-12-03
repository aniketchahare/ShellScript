#!/bin/bash -x

empStatus=$(( RANDOM%2 ))
empType=$(( RANDOM%2 ))
wages=100
fullTimeHour=8
halfTimeHour=4

if [ $empStatus -eq 0 ]
then
	echo "PRESENT"
	if [ $empType -eq 0 ]
	then
		salary=$(( $wages * $fullTimeHour ))
	else
		salary=$(( $wages * $halfTimeHour ))
	fi
	echo "Total salary--> $salary"
else
	echo "NOT PRESENT"
fi

