local bob = {}

local function shouting(utterance)
  return string.match(utterance, '[A-Z]') and
         not string.match(utterance, '[a-z]')
end

local function asking(utterance)
  return string.match(utterance, '?$')
end

local function not_saying_anything(utterance)
  return string.match(utterance, '^%s*$')
end

function bob.hey(utterance)
  if shouting(utterance) then return 'Whoa, chill out!'
  elseif asking(utterance) then return 'Sure'
  elseif not_saying_anything(utterance) then return 'Fine, be that way.'
  else return 'Whatever'
  end
end

return bob
