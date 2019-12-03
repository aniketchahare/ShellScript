#!/bin/bash -x

x=`echo $(( RANDOM%6 ))`
y=`echo $(( RANDOM%6 ))`

result=$(( $x + $y ))

echo $result
