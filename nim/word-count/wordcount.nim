import critbits, strutils

type TWordCount* = CritBitTree[int]

iterator words(s: string): string =
  for word in s.split(AllChars - Letters - Digits - {'\0'}):
    yield toLower(word)

proc wordCount*(sentence: string): TWordCount =
  for word in words(sentence):
    if not result.hasKey(word): result[word] = 0
    result.inc(word)
