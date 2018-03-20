fun name (input: string option): string =
  case input of
    SOME recipient => "One for " ^ recipient ^ ", one for me."
    | NONE         => name (SOME "you")
