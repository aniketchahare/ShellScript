#!/bin/bash -x

read -p "Enter the vakue of x--> " x
read -p "Enter the value of y--> " y

z=$(( $x + $y ))

echo "value after addition--> $z"
