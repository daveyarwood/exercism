module Pangram (isPangram) where
import Data.Char (toLower)

alphabet :: [Char]
alphabet = "abcdefghijklmnopqrstuvwxyz"

hasLetter :: [Char] -> Char -> Bool
hasLetter str char = char `elem` (map toLower str)

isPangram :: String -> Bool
isPangram text = all (hasLetter text) alphabet
