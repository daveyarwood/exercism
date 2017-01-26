module Bob exposing (hey)
import Regex

isShouting : String -> Bool
isShouting utterance =
  let
      hasUppercase = Regex.contains (Regex.regex "[A-Z]")
      hasLowercase = Regex.contains (Regex.regex "[a-z]")
  in
     hasUppercase utterance && not (hasLowercase utterance)

isAsking : String -> Bool
isAsking = String.endsWith "?"

notSayingAnything : String -> Bool
notSayingAnything = Regex.contains (Regex.regex "^\\s*$")

hey : String -> String
hey utterance =
  if isShouting utterance then "Whoa, chill out!"
  else if isAsking utterance then "Sure."
  else if notSayingAnything utterance then "Fine. Be that way!"
  else "Whatever."
