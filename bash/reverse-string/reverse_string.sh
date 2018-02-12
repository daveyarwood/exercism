#!/bin/bash

input="$1"

result=""

for (( i = ${#input} - 1; i >= 0; i-- )); do
  result+=${input:$i:1}
done

echo "$result"
