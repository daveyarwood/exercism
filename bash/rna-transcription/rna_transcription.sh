#!/bin/bash

DNA=CGTA
RNA=GCAU

validate() {
  DNA_STRAND=$1

  if [[ ! "$DNA_STRAND" =~ ^[$DNA]*$ ]]; then
    echo "Invalid nucleotide detected."
    exit 1
  fi
}

DNA_STRAND=$1
validate $DNA_STRAND
echo $DNA_STRAND | tr $DNA $RNA

