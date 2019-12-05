#!/bin/bash -x

function find()
{
	l=$1
	r=$2
	while [ $l -le $r ]
	do
		mid=$(( $(( $l+$r )) / 2 ))
		read -p "Is it your number $mid [ press 0(true) or 1(false) ]--> " choice

		if [ $choice == 0 ]
		then
			echo $mid
			break
		elif [ $choice == 1 ]
		then
			read -p "Your number is greater than $mid [ Press 0(true) or 1(false) ]--> " choice1

			if [ $choice1 == 0 ]
			then
				l=$(($mid+1))
			elif [ $choice1 == 1 ]
			then
				if [ $mid == 0 ]
				then
					echo -1
					break
				fi
				r=$(($mid-1))
			else
				echo -1
				break
			fi
		else
			echo -1
			break
		fi
	done
}

read -p "Enter upto number--> " range
read -p "Think number between 0 and $range and press 0--> " num

if [ $num == 0 ]
then
	result=$(find 0 $range)
	if [ $result == -1 ]
	then
		echo "Wrong input..."
	else
		echo "Your number is $result"
	fi
else
	echo "Wrong input...play again"
fi

