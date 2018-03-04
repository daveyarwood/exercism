#!/bin/bash

square() {
  if [[ $1 -eq 1 ]]; then
    echo 1
  else
    # NB: Square 64's number is large enough that we have to use `bc` instead of
    # shell arithmetic expansion, otherwise we get an integer overflow.
    echo "2 * $(square $(($1 - 1)))" | bc
  fi
}

if [[ $1 -lt 1 ]] || [[ $1 -gt 64 ]]; then
  echo "Error: invalid input"
  exit 1
fi

square $1
