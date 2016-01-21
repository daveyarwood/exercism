function accumulate(coll, f)
  local result = {}
  for k, v in pairs(coll) do
    result[k] = f(v)
  end
  return result
end

return accumulate
