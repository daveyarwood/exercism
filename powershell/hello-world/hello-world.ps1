function HelloWorld {
  $name = $args[0]

  if (!$name) {
    $name = "World"
  }

  return "Hello $name!"
}
