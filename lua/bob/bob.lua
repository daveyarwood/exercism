local bob = {}

local function shouting(utterance)
  return utterance:match('[A-Z]') and not utterance:match('[a-z]')
end

local function asking(utterance)
  return utterance:match('?$')
end

local function not_saying_anything(utterance)
  return utterance:match('^%s*$')
end

function bob.hey(utterance)
  if shouting(utterance) then return 'Whoa, chill out!'
  elseif asking(utterance) then return 'Sure'
  elseif not_saying_anything(utterance) then return 'Fine, be that way.'
  else return 'Whatever'
  end
end

return bob
