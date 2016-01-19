local hamming = {}

function hamming.compute(a, b)
  local sum = 0

  -- I'm assuming a and b are the same length
  for i = 1, #a do
    if a:sub(i, i) ~= b:sub(i, i) then
      sum = sum + 1
    end
  end

  return sum
end

return hamming
