#!/bin/bash -x

empStatus=$(( RANDOM%2 ))
empType=$(( RANDOM%2 ))
isFullTime=0
isPartTime=1
wages=100
fullTimeHour=8
halfTimeHour=4

if [ $empStatus -eq 0 ]
then
		case $empType in
			$isFullTime)
				salary=$(( $wages * $fullTimeHour )) ;;
			$isPartTime)
				salary=$(( $wages * $halfTimeHour )) ;;
			*)
				salary=0 ;;
		esac
		echo "Total salary--> $salary"
else
		echo "NOT PRESENT"
fi
