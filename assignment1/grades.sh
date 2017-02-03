#!/bin/bash -e
# Samuel Bateman
if [ -z "$1" ]
  then
    echo "Usage: grades.sh filename"
else
  touch ___TEMPDATA___
  input=$1
  temp=""
  IFS=" "
  while read -r id first last one two three
  do
    average=$(($one + $two + $three))
    average=$(($average / 3))
    echo "$average [$id] $last, $first" >> ___TEMPDATA___
  done < "$input"
  sort -k 3,4 -k 2 ___TEMPDATA___
  rm ___TEMPDATA___
fi
