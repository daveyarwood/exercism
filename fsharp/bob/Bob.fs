module Bob

open System
open System.Text.RegularExpressions

let shouting (input: string): bool =
  Regex.IsMatch(input, "[A-Z]") && not (Regex.IsMatch(input, "[a-z]"))

let asking (input: string): bool =
  Regex.IsMatch(input, "\\?\\s*$")

let response (input: string): string =
  match input with
  | s when String.IsNullOrWhiteSpace(s) -> "Fine. Be that way!"
  | s when shouting(s) && asking(s) -> "Calm down, I know what I'm doing!"
  | s when shouting(s) -> "Whoa, chill out!"
  | s when asking(s) -> "Sure."
  | s -> "Whatever."
