function accumulate(coll, f)
  local result = {}
  for i = 1, #coll do
    result[i] = f(coll[i])
  end
  return result
end

return accumulate
