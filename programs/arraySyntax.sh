#!/bin/bash -x

echo "Enter no. of rows: "
read row
echo "Enter the no. of column: "
read column

declare -A arr

echo "Enter the elements"

for((i=0;i<row;i++))
do
	for((j=0;j<column;j++))
	do
		read value
		arr[$i,$j]=$value
#		echo "value-->"
#		echo "${arr[${i},${j}]}"
	done
done

for((i=0;i<row;i++))
do
	for((j=0;j<column;j++))
	do
		echo -n "${arr[$i,$j]} "
	done
	echo
done
