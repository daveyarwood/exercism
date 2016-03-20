module HelloWorld (..) where

helloWorld : Maybe String -> String
helloWorld maybeName =
  let
    name = case maybeName of
      Nothing   -> "World"
      Just name -> name
  in
    "Hello, " ++ name ++ "!"

