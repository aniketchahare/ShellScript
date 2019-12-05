#!/bin/bash -x

declare -A arr

num=0
count=0
while [[ $count != 10 ]]
do
	randomNum=$(( RANDOM%1000 ))
	length=`echo -n $randomNum | wc -c`

	if [ $length == 3 ]
	then
		arr[${num}]=$randomNum
		count=$(($count+1))
		((num++))
	fi
done

echo ${arr[@]}

arrLength=`echo ${#arr[@]}`

firstLargest=${arr[0]}
secondLargest=${arr[1]}

for((i=0;i<$arrLength;i++))
do
	if [ $firstLargest -lt ${arr[$i]} ]
	then
		secondLargest=$firstLargest
		firstLargest=${arr[$i]}
	elif [ $secondLargest -lt ${arr[$i]} ]
	then
		secondLargest=${arr[$i]}
	fi
done

firstSmallest=${arr[0]}
firstSmallest=${arr[1]}

for((i=0;i<$arrLength;i++))
do
	if [ $firstSmallest -gt ${arr[$i]} ]
	then
		secondSmallest=$firstSmallest
		firstSmallest=${arr[$i]}
	elif [ $secondSmallest > ${arr[$i]} ]
	then
		secondSmallest=${arr[$i]}
	fi
done

echo "firstLargest--> $firstLargest"
echo "secondLargest--> $secondLargest"
echo "firstSmallest--> $firstSmallest"
echo "secondSmallest--> $secondSmallest"
