module HelloWorld where

import Prelude
import Data.Maybe (Maybe(..))

helloWorld :: Maybe String -> String
helloWorld Nothing = helloWorld (Just "World")
helloWorld (Just name) = "Hello, " <> name <> "!"
