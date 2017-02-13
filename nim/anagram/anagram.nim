import algorithm
import sequtils
import strutils

proc sortString(str: string): seq[char] =
  return sorted(toSeq(str.items), system.cmp)

proc detectAnagrams*(word: string, candidates: seq[string]): seq[string] =
  let isAnagram = proc(candidate: string): bool =
    let
      x = toLower(candidate)
      y = toLower(word)
    return x != y and sortString(x) == sortString(y)
  return filter(candidates, isAnagram)
