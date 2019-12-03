#!/bin/bash -x

cat ../linux-content/data.csv | awk '{ if ( $4 > 100000 ) print $2 " \t\t" $4 }'

