#!/bin/bash -x

declare -A dic

num=0
while [ $num != 6 ]
do
	randomNo=$((RANDOM%6))
	index="dies $num"
	dic[$index]=$randomNo
	((num++))
done

echo ${!dic[@]}
echo ${dic[@]}
