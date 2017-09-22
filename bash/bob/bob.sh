#!/bin/bash

shouting() { [[ "$1" =~ [A-Z] ]] && [[ ! "$1" =~ [a-z] ]]; }
asking() { [[ "$1" =~ \?\ *$ ]]; }
silence() { [[ -z "${1// }" ]]; }

shouting "$1" && echo "Whoa, chill out!" && exit 0
asking "$1" && echo "Sure." && exit 0
silence "$1" && echo "Fine. Be that way!" && exit 0

echo "Whatever."
