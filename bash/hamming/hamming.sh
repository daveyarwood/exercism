#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi

if [[ ${#1} -ne ${#2} ]]; then
  echo "The two strands must have the same length."
  exit 1
fi

distance=0

for (( i=0; i<${#1}; i++ )); do
  if [ ${1:$i:1} != ${2:$i:1} ]; then
    let 'distance += 1'
  fi
done

echo $distance

