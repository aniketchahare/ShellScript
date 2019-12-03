#!/bin/bash -x

read -p "Enter the value of x--> " x
read -p "Enter the value of y--> " y
read -p "Enter the value of z--> " z

cal=$(( $(( $x * $y )) + $z))

echo "calculation--> $cal"
