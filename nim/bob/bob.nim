import strutils

proc hey*(utterance: string): string =
  if isSpace(utterance) or len(utterance) == 0:
    return "Fine. Be that way!"
  elif contains(utterance, {'A'..'Z'}) and not contains(utterance, {'a'..'z'}):
    return "Whoa, chill out!"
  elif endsWith(utterance, "?"):
    return "Sure."
  else:
    return "Whatever."
