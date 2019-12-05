#!/bin/bash -x

read -p "Enter the number--> " num

power=0

for((i=0;i<=$num;i++))
do
	if [ $i == 0 ]
	then
		power=1
	else
		power=$(( $power * 2 ))
	fi
	echo "2^$i is $power"
done
