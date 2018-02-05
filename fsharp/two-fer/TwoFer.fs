module TwoFer

let rec twoFer (input: string option): string =
  sprintf "One for %s, one for me." (defaultArg input "you")
