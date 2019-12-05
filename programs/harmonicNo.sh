#!/bin/bash -x

function harmonic(){
	length=`echo  -n $1 | wc -c`
	sum=0
	for((i=1;i<=$1;i++))
	do
		echo -n "1/$i "
		cal=$(echo 1/$i | bc -l)
		sum=$(echo $sum + $cal | bc -l)
	done
	echo
	echo "sum is $sum"
}

read -p "Enter number upto: " num

if [ $num > 0 ]
then
	harmonic $num
else
	echo "Input should not be zero and negative value."
fi

