#!/bin/bash -x

function palindromChecker()
{
	reverseNumber=0
	number=$1
	while [ $number != 0 ]
	do
		rem=$(( $number%10 ))
		reverseNumber=$(( $(( $reverseNumber*10 )) + $rem ))
		number=$(( $number/10 ))
	done
	echo $reverseNumber
}

read -p "Enter the number1--> " num1
read -p "Enter the number2--> " num2

if [ $num1 -lt 0 ] && [ $num2 -lt 0 ]
then
	echo "Please enter value more than 0"
else
	firstNumber=$( palindromChecker $num1 )
	secondNumber=$( palindromChecker $num2 )
	if [ $firstNumber -eq $secondNumber ]
	then
		echo "Number is palindrome"
	else
		echo "Number is not a palindrome"
	fi
fi
