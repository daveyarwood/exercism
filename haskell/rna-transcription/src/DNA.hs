module DNA (toRNA) where

dnaToRna :: [(Char, Char)]
dnaToRna = [('G', 'C'),
            ('C', 'G'),
            ('T', 'A'),
            ('A', 'U')]

toRNA :: String -> Maybe String
toRNA = mapM ((flip lookup) dnaToRna)

