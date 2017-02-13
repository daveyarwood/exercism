import algorithm
import sequtils
import strutils

# there has to be a better way, wtf
proc charSeqToString(cseq: seq[char]): string =
  map(cseq, proc(c: char): string = repeat(c, 1)).join

proc sortString(str: string): string =
  let sortedCharSeq: seq[char] = sorted(toSeq(str.items), system.cmp)
  return charSeqToString(sortedCharSeq)

proc detectAnagrams*(word: string, candidates: seq[string]): seq[string] =
  let isAnagram = proc(candidate: string): bool =
    let
      x = toLower(candidate)
      y = toLower(word)
    return x != y and sortString(x) == sortString(y)
  return filter(candidates, isAnagram)
