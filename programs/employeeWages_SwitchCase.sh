#!/bin/bash -x

empStatus=$(( RANDOM%2 ))
empType=$(( RANDOM%2 ))
isFullTime=0
isPartTime=1
wages=100
fullTimeHour=8
halfTimeHour=4

totalSalary=0
totalWorkingDays=20
employWorkingDays=0
totalWorkingHours=50
employWorkingHours=0

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

		while [ $employWorkingHours != $totalWorkingHours ]
		do
			totalSalary=$(( $totalSalary+$salary ))
			((employWorkingHours++))
		done
		echo "Total salary--> $totalSalary"
else
		echo "NOT PRESENT"
fi
