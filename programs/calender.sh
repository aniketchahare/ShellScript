#!/bin/bash -x

read -p "Enter the day--> " day
read -p "Enter the month--> " mon


if [[ $mon == "march" || $mon -eq 3 ||  $mon == "april" || $mon -eq 4 ||  $mon == "may" || $mon -eq 5 ||  $mon == "june" || $mon -eq 6 ]] && [[ $day -gt 0 && $day -le 31 ]]
then
	if [[ $mon == "march" || $mon -eq 3 && $day -ge 20 && $day -le 31 ]]
	then
		echo true
	elif [[ $mon == "april" || $mon -eq 4 && $day -ge 01 && $day -le 30 ]]
	then
		echo true
	elif [[ $mon == "may" || $mon -eq 5 && $day -ge 01 && $day -le 31 ]]
	then
		echo true
	elif [[ $mon == "june" || $mon -eq 6 && $day -ge 01 && $day -le 20 ]]
	then
		echo true
	else
		echo false
	fi
else
	echo "Please enter valid input"
fi
