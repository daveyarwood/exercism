import future, sequtils, strutils

const rules: seq[tuple[factor: int, sound: string]] =
  @[(3, "Pling"), (5, "Plang"), (7, "Plong")]

proc convert*(n: int): string =
  let sounds = lc[ rule.sound | ( rule <- rules, n %% rule.factor == 0 ),
                   string ]
  if len(sounds) > 0:
    sounds.join("")
  else:
    $n

