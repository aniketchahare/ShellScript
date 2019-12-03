#!/bin/bash -x

max=0
min=0

for((i=0;i<5;i++))
do
	val=`echo $(( RANDOM%1000 ))`

	if [ $val -lt 100 ]
	then
		echo "not valid"
	else
		if [ $val -gt $max ]
		then
			max=$val
		elif [ $val -lt $min ]
		then
			minVal=$val
		fi
		min=$val
	fi
done

echo "$max is max"
echo "$minVal is min"

