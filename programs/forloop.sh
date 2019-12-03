#!/bin/bash -x

x=10
y=20

for ((i=0;i<30;i++))
do
	if [[ $i -le $x ]]
	then
		echo "less--> " ${i}
	else
		echo "greter--> " ${i}
	fi
done
