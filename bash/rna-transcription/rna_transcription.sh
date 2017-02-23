#!/bin/bash

dna_to_rna() {
  NUCLEOTIDE=$1

  if   [[ "$NUCLEOTIDE" == "C" ]]; then echo "G"
  elif [[ "$NUCLEOTIDE" == "G" ]]; then echo "C"
  elif [[ "$NUCLEOTIDE" == "T" ]]; then echo "A"
  elif [[ "$NUCLEOTIDE" == "A" ]]; then echo "U"
  else echo "INVALID"
  fi
}

STRAND=$1
OUTFILE=$(mktemp)

for (( i=0; i<${#STRAND}; i++ )); do
  DNA=${STRAND:$i:1}
  RNA=$(dna_to_rna $DNA)

  if [[ "$RNA" == "INVALID" ]]; then
    echo "Invalid nucleotide detected."
    exit 1
  fi

  echo -n $RNA >> $OUTFILE
done

cat $OUTFILE
