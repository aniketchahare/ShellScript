#!/bin/bash -x

read -p "Enter the number--> " num

cal=1

for((i=1;i<=$num;i++))
do
	cal=$(($cal * $i))
done

echo "Factorial of $num is $cal"

