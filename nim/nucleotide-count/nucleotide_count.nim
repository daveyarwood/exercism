import tables

proc count_dna*(strand: string): Table[char, int] =
  result = initTable[char, int]()
  if len(strand) == 0: return

  for nucleotide in ['G', 'C', 'T', 'A']:
    result[nucleotide] = 0

  for nucleotide in strand:
    result[nucleotide] += 1

proc count*(nucleotide: char, strand: string): int =
  if len(strand) == 0: return 0
  count_dna(strand)[nucleotide]

