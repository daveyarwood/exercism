module Bob (responseFor) where
import Text.Regex.PCRE ((=~))

isShouting :: String -> Bool
isShouting utterance = (utterance =~ "[A-Z]") &&
                       (not (utterance =~ "[a-z]"))

isAsking :: String -> Bool
isAsking utterance = utterance =~ "\\?\\s*\\Z"

isSilence :: String -> Bool
isSilence utterance = utterance =~ "\\A\\s*\\Z"

responseFor :: String -> String
responseFor utterance
  | isShouting utterance = "Whoa, chill out!"
  | isAsking utterance   = "Sure."
  | isSilence utterance  = "Fine. Be that way!"
  | otherwise            = "Whatever."
