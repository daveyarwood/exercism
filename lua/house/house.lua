local house = {}

local things = {
  {"the house that Jack built"},
  {"the malt", "lay in"},
  {"the rat", "ate"},
  {"the cat", "killed"},
  {"the dog", "worried"},
  {"the cow with the crumpled horn", "tossed"},
  {"the maiden all forlorn", "milked"},
  {"the man all tattered and torn", "kissed"},
  {"the priest all shaven and shorn", "married"},
  {"the rooster that crowed in the morn", "woke"},
  {"the farmer sowing his corn", "kept"},
  {"the horse and the hound and the horn", "belonged to"}
}

function describe(n)
  noun, verb = unpack(things[n])
  if verb == nil then
    return noun
  else
    return string.format("%s\nthat %s %s", noun, verb, describe(n-1))
  end
end

function house.verse(n)
  return string.format("This is %s.", describe(n))
end

function house.recite()
  local result = ""
  for i, v in ipairs(things) do
    result = result .. house.verse(i) .. "\n"
  end
  return string.gsub(result, "\n$", "")
end

return house
