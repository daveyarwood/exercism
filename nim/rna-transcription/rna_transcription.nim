import sequtils
import strutils
import tables

# I wish you could just cast a char to a string in Nim.
proc toString(ch: char): string =
  repeat(ch, 1)

const dnaToRna = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}.toTable

proc translate(c: char): string = dnaToRna[c].toString

proc toRna*(dna: string): string = toSeq(dna.items).map(translate).join
