#!/bin/bash
# Samuel Bateman
if [ -z "$1" ]
  then
    echo "Usage: grades-awk.sh filename"
else
  awk '{sum = 0; for(i=4; i<=NF;i++) sum += $i; printf("%3.0f",  (sum/3)); print " ["$1"]", $3",", $2}' $1 | sort -k 3,4 -k 2
fi
