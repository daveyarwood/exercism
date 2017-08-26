module HelloWorld

export
greet : Maybe String -> String
greet Nothing = greet (Just "World")
greet (Just name) = "Hello, " ++ name ++ "!"
