diff = {};

function diff.square_of_sums(n)
  local sum = 0

  for x = 1, n do
    sum = sum + x
  end

  return sum * sum
end

function diff.sum_of_squares(n)
  local sum = 0

  for x = 1, n do
    sum = sum + (x * x)
  end

  return sum
end

function diff.difference_of_squares(n)
  return diff.square_of_sums(n) - diff.sum_of_squares(n)
end

return diff;
