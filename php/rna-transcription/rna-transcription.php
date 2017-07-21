<?php

function toRna($dna_strand) {
  $transcribe = function($nucleotide) {
    $dna_to_rna = ['G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'];
    return $dna_to_rna[$nucleotide];
  };

  $dna_nucleotides = str_split($dna_strand);
  $rna_nucleotides = array_map($transcribe, $dna_nucleotides);
  return implode($rna_nucleotides);
}
