function HelloWorld {
  if (!$args[0]) {
    $name = "World"
  } else {
    $name = $args[0]
  }

  return "Hello $name!"
}
