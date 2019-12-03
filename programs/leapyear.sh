#!/bin/bash -x

function leapyear()
{
	if [ `expr $1 % 4` -eq 0 ]
	then
#		echo "inside 4 true"
		if [ `expr $1 % 100` -eq 0 ]
		then
#			echo "inside 100 true"
			if [ `expr $1 % 400` -eq 0 ]
			then
#				echo "inside 400 true"
				echo true;
			else
#				echo "inside 400 false"
				echo false;
			fi
		else
#			echo "inside 100 false"
			echo true;
		fi
	else
#		echo "inside 4 false"
		echo false;
	fi
}

echo "Enter the year:"
read year

count=`echo -n $year | wc -c`

if [ $count == 4 ]
then
	result=$(leapyear $year)
	echo $result
	if [ $result == true ]
	then
		echo $year "is a leap year"
	else
		echo $year "not a leap year"
	fi
else
	echo "Please enter year of 4 digits"
fi
