local rules = {
  {3, 'Pling'},
  {5, 'Plang'},
  {7, 'Plong'}
}

function raindrops(number)
  local result = ''
  for i, v in ipairs(rules) do
    n, sound = unpack(v)
    if number % n == 0 then
      result = result .. sound
    end
  end

  if result == '' then
    result = tostring(number)
  end

  return result
end

return raindrops
