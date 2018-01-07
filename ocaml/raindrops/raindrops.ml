let rules = [(3, "Pling"); (5, "Plang"); (7, "Plong")]

let raindrop n =
  rules
  |> List.filter (fun (factor, sound) -> n mod factor = 0)
  |> List.map snd
  |> String.concat ""
  |> fun s -> if String.length s = 0 then string_of_int(n) else s
