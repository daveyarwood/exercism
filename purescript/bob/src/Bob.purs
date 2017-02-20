module Bob (hey) where

import Prelude
import Data.Either as Either
import Data.String.Regex as Regex
import Data.String.Regex.Flags (noFlags)
import Data.String.Regex.Unsafe (unsafeRegex)

regexTest :: String -> String -> Boolean
regexTest pattern str = Regex.test (unsafeRegex pattern noFlags) str

containsLower :: String -> Boolean
containsLower utterance = regexTest "[a-z]" utterance

containsUpper :: String -> Boolean
containsUpper utterance = regexTest "[A-Z]" utterance

isShouting :: String -> Boolean
isShouting utterance = containsUpper utterance && not (containsLower utterance)

isAsking :: String -> Boolean
isAsking utterance = regexTest "\\?$" utterance

notSayingAnything :: String -> Boolean
notSayingAnything utterance = regexTest "^[\\s]*$" utterance

hey :: String -> String
hey utterance =
  if isShouting utterance then
    "Whoachill out!"
  else if isAsking utterance then
    "Sure."
  else if notSayingAnything utterance then
    "Fine. Be that way!"
  else
    "Whatever."
