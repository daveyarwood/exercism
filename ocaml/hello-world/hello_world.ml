let rec greet subject =
  match subject with
  | None -> greet(Some("World"))
  | Some(subject) -> Printf.sprintf "Hello, %s!" subject
