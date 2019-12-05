#!/bin/bash -x

FeetToInch=1
InchToFeet=2
FeetToMeter=3
MeterToFeet=4

echo "1. Feet to inch
2. Inch to feet
3. Feet to meter
4. Meter to feet"

read -p "Enter your choice:- " choice
read -p "Enter number:- " num

case $choice in
	$FeetToInch)
  		conversion=$(( $num*12 ));;
	$InchToFeet)
  		conversion=`echo $(( $num/12 )) | bc`;;
	$FeetToMeter)
  		conversion=$(( $num*0.3048 ));;
	$MeterToFeet)
  		conversion=$(( $num/0.3048 ));;
esac

echo $conversion
