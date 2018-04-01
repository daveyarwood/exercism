-module(rna_transcription).

-export([to_rna/1, test_version/0]).

dna_to_rna($G) -> $C;
dna_to_rna($C) -> $G;
dna_to_rna($T) -> $A;
dna_to_rna($A) -> $U;
dna_to_rna(_) -> invalid_nucleotide.

to_rna(Strand) ->
  Nucleotides = [dna_to_rna(C) || C <- Strand],
  case lists:any(fun(C) -> C == invalid_nucleotide end, Nucleotides) of
    true  -> error;
    false -> Nucleotides
  end.

test_version() -> 2.
