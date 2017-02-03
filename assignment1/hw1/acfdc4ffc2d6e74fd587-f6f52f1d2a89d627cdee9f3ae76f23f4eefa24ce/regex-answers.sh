#!/bin/bash
if [ -z "$1" ]
  then
  echo "Usage: regex-answers.sh filename"
else
  grep '[0-9]$' $1 | wc -l
  grep '^[^aeiouAEIOU]' $1 | wc -l
  grep -E '^[a-zA-Z]{12}$' $1 | wc -l
  grep -E '[0-9]{3}-[0-9]{3}-[0-9]{4}' $1 | wc -l
  grep -E '303-[0-9]{3}-[0-9]{4}' $1 | wc -l
  grep -E '^[aeiouAEIOU].*[0-9]$' $1 | wc -l
  grep -E '[a-zA-Z0-9]+@geocities\.com' $1 | wc -l
  grep -E '.*[^A-Za-z0-9\.\-].*@.*\..*' $1 | wc -l
fi
