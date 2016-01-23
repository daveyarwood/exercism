function accumulate(coll, f)
  local result = {}
  for i, v in ipairs(coll) do
    result[i] = f(v)
  end
  return result
end

return accumulate
