module RunLength (decode, encode) where
import Data.List (group)
import Text.Regex.PCRE ((=~))

decodeCharRun :: [String] -> String
decodeCharRun (fullMatch : "" : char : _) = char
decodeCharRun (fullMatch : num : char : _) = [1..(read num :: Int)] >> char

decode :: String -> String
decode str = concat $
             map decodeCharRun $
             (str =~ "([0-9]*)([a-zA-Z ])" :: [[String]])

encodeCharRun :: String -> String
encodeCharRun charRun =
  let char      = [(head charRun)]
      runLength = length charRun
      number    = if runLength == 1
                    then ""
                    else show runLength
  in number ++ char

encode :: String -> String
encode str = concat $
             map encodeCharRun $
             group str
