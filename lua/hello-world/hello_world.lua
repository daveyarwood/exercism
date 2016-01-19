local HelloWorld = {}

function HelloWorld.hello(name)
  if name == nil then
    name = "world"
  end
  return "Hello, " .. name .. "!"
end

return HelloWorld
