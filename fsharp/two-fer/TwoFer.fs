module TwoFer

let rec twoFer (input: string option): string =
  match input with
  | None            -> twoFer (Some("you"))
  | Some(recipient) -> sprintf "One for %s, one for me." recipient
