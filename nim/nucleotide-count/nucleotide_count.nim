import tables

# I feel like this should work, but I'm getting this error message:

# Traceback (most recent call last)
# unittest.nim(230)        nucleotide_count_test
# nucleotide_count.nim(11) count
# nucleotide_count.nim(5)  count_dna
# tableimpl.nim(92)        []=
# tableimpl.nim(32)        rawGet
# SIGSEGV: Illegal storage access. (Attempt to read from nil?)
# Error: execution of an external program failed: '/media/sf_Code/exercism/nim/nucleotide-count/nucleotide_count_test '

proc count_dna*(strand: string): Table[char, int] =
  for nucleotide in ['G', 'C', 'T', 'A']:
    result[nucleotide] = 0

  for nucleotide in strand:
    result[nucleotide] += 1

proc count*(nucleotide: char, strand: string): int =
  count_dna(strand)[nucleotide]

