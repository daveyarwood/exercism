module DNA (toRNA) where

dnaToRna :: [(Char, Char)]
dnaToRna = [('G', 'C'),
            ('C', 'G'),
            ('T', 'A'),
            ('A', 'U')]

translate :: Maybe String -> Char -> Maybe String
translate Nothing _ = Nothing
translate (Just rnaString) dna =
  case lookup dna dnaToRna of
    Nothing  -> Nothing
    Just rna -> Just (rnaString ++ [rna])

toRNA :: String -> Maybe String
toRNA xs = foldl translate (Just "") xs

