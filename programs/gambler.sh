#!/bin/bash -x

read -p "Enter stake: " stake
read -p "Enter Goal: " goal
read -p "Enter Trial: " trial

bet=0
win=0

if [ $stake -le $goal ]
then
	for((i=0;i<$trial;i++))
	do
		cash=$stake
		while [[ $cash > 0 && $cash < $goal ]]
		do
			if [ $(( RANDOM%10 )) < 5 ]
			then
				((cash++))
			else
				((cash--))
			fi
		done
		if [ $cash == $goal ]
		then
			((win++))
		fi
	done
	loss=$(($trial-$win))

	echo "$win wins of $trial"
	echo "$loss loss of $trial"
else
	echo "Goal must be greater than stake"
fi
