translate_nucleotide <- function(nucleotide) {
  switch(nucleotide,
         G = "C",
         C = "G",
         T = "A",
         A = "U",
         stop(sprintf("Invalid DNA nucleotide: %s", nucleotide)))
}

to_rna <- function(dna) {
  paste(sapply(strsplit(dna, "")[[1]],
               translate_nucleotide),
        collapse="")
}
