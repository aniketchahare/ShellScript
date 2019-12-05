#!/bin/bash -x

function primeNo(){
	num=$(( $1/2 ))
	boolean=true
	for((i=2;i<=$num;i++))
	do
		n=$(( $1%$i ))
		if [ $n == 0 ]
		then
			boolean=false
			break
		fi
	done
	echo $boolean
}

read -p "Enter the number-->" num

if [[ $num -eq 1 || $num -eq 0 || $num -lt 0 ]]
then
	echo "1 and 0 are not a prime number"
else
	for((i=2;i<=$num;i++))
	do
		result=$(primeNo $i)
		if [ $result == true ]
		then
			echo "$i"
		fi
	done
fi
