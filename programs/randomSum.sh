#!/bin/bash -x

sum=0

for((i=0;i<5;i++))
do
	x=`echo $(( RANDOM%100 ))`
	if [ $x -gt 10 ]
	then
		sum=$(( $sum + $x ))
	fi
done

echo "sum--> $sum"
