#!/bin/bash

input="$1"
output=""
skipping=no

for (( i = 0; i < ${#input}; i++ )); do
  char="${input:$i:1}"

  if [[ $skipping = 'yes' ]] && [[ $char =~ ' ' ]] || [[ $char = '-' ]]; then
    skipping=no
  elif [[ $skipping = 'no' ]] && [[ $char =~ [A-Za-z] ]]; then
    output+=$(echo $char | tr '[[:lower:]]' '[[:upper:]]')
    skipping=yes
  fi
done

echo "$output"
