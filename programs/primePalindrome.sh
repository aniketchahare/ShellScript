#!/bin/bash -x

function palindromChecker(){
	reverseNumber=0
	number=$1
	receivedNumber=$1

	while [ $number != 0 ]
	do
		rem=$(( $number%10 ))
		reverseNumber=$(( $(( $reverseNumber*10 )) + $rem ))
		number=$(( $number/10 ))
	done

	if [ $reverseNumber -eq $1 ]
	then
		echo 0
	else
		echo 1
	fi
}

function prime(){
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

function main(){
	read -p "Enter the number1--> " num

	if [ $num -lt 0 ]
	then
		echo "Please enter value more than 0"
	else
		primeNumber=$( prime $num )

		if [ $primeNumber == true ]
		then
			echo "Number is prime"
			number=$( palindromChecker $num )
			if [ $number -eq 0 ]
			then
				echo "Number is palindrome"
			else
				echo "Number is not palindrome"
			fi
		else
			echo "Number is not prime"
		fi
	fi
}

main
