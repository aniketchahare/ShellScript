#!/bin/bash -x

x=0

while [ $x -lt 10 ]
do
	y=$x
	while [ $y -ge 0 ]
	do
		echo -n  "* "
		y=`expr $y - 1`
	done
	echo
	x=`expr $x + 1`
done
