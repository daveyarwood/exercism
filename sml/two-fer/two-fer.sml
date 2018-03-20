fun name NONE = name (SOME "you")
  | name (SOME recipient) = "One for " ^ recipient ^ ", one for me."
