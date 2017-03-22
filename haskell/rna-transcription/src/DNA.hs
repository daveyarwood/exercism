module DNA (toRNA) where
import Control.Monad (foldM)

dnaToRna :: [(Char, Char)]
dnaToRna = [('G', 'C'),
            ('C', 'G'),
            ('T', 'A'),
            ('A', 'U')]

addChar :: String -> Char -> Maybe String
addChar rnaString dna =
  case lookup dna dnaToRna of
    Nothing  -> Nothing
    Just rna -> Just (rnaString ++ [rna])

toRNA :: String -> Maybe String
toRNA xs = foldM addChar "" xs

