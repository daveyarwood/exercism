proc distance*(a: string, b: string): int =
  var distance: int = 0
  for i in 0..len(a):
    if a[i] != b[i]:
      distance = distance + 1
  return distance
