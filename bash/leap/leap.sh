#!/bin/bash

if [[ $# -eq 0 ]] || [[ $# -gt 1 ]] || [[ ! $1 =~ ^[0-9]+$ ]] ; then
  echo "Usage: leap.sh <year>"
  exit 1
fi

YEAR=$1

if [[ $(echo $YEAR % 400 | bc) -eq 0 ]] || \
   ([[ $(echo $YEAR % 4 | bc) -eq 0 ]] && [[ ! $(echo $YEAR % 100 | bc) -eq 0 ]])
then
  echo This is a leap year.
else
  echo This is not a leap year.
fi

