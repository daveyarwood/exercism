function Compute {
  $a = $args[0].ToCharArray()
  $b = $args[1].ToCharArray()

  if ($a.length -ne $b.length) {
    Throw "Mismatching string lengths"
  }

  $difference = 0

  for ($i = 0; $i -lt $a.length; $i++) {
    if ($a[$i] -ne $b[$i]) {
      $difference++
    }
  }

  return $difference
}
