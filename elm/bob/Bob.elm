module Bob exposing (..)

-- currently getting this weird error:

-- Success! Compiled 1 module.
-- Successfully generated /var/folders/h0/jb2j4f310zx08ynwfxw8lxg00000gn/T/elm_test_116722-49575-1vquwbx.js
-- Successfully compiled BobTests.elm
-- Running tests...

-- [stdin]:12311
--     if (typeof Elm === "undefined") { throw "elm-io config error: Elm is not defined. Make sure you call elm-io with a real Elm output file"}
--                                               ^
-- elm-io config error: Elm is not defined. Make sure you call elm-io with a real Elm output file

hey : String -> String
hey utterance =
  utterance
