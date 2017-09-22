#!/bin/bash

shouting() {
  [[ "$1" =~ [A-Z] ]] && [[ ! "$1" =~ [a-z] ]]
}

asking() {
  [[ "$1" =~ \?\ *$ ]]
}

silence() {
  [[ -z "${1// }" ]]
}

if shouting "$1"; then
  echo "Whoa, chill out!"
elif asking "$1"; then
  echo "Sure."
elif silence "$1"; then
  echo "Fine. Be that way!"
else
  echo "Whatever."
fi
