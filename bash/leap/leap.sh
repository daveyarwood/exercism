#!/bin/bash

if [[ $# -eq 0 ]] || [[ $# -gt 1 ]] || [[ ! $1 =~ ^[0-9]+$ ]] ; then
  echo "Usage: leap.sh <year>"
  exit 1
fi

YEAR=$1

divisible_by() {
  if [[ $(echo $YEAR % $1 | bc) -eq 0 ]]; then
    return 0
  else
    return 1
  fi
}

if divisible_by 400 || (divisible_by 4 && ! divisible_by 100); then
  echo This is a leap year.
else
  echo This is not a leap year.
fi

