local vlq = {}

function reverse_table(table)
  local reversed_table = {}

  for i, v in ipairs(table) do
    reversed_table[#table - (i - 1)] = v
  end

  return reversed_table
end

function leftpad(str, length, char)
  return char:rep(length - #str) .. str
end

-- represent a number as a string of 0s and 1s
function in_binary(number)
  local num_bits = math.max(1, select(2, math.frexp(number)))
  local bits = {}

  for i = num_bits, 1, -1 do
    local bit = math.fmod(number, 2)
    bits[i] = bit
    number = math.floor((number - bit) / 2)
  end

  return table.concat(bits)
end

-- split a binary number string into groups of 7 bits each, padding the largest
-- group with 0's
--
-- e.g.: 10001001 => 0000001 0001001
function seven_bit_groups(binary_str)
  local bit_groups_reversed = {}
  local bit_group_reversed = {}

  for i = #binary_str, 1, -1 do
    if #bit_group_reversed < 7 then
      table.insert(bit_group_reversed, tonumber(binary_str:sub(i,i)))
    else
      -- add completed bit group to result
      local bit_group = reverse_table(bit_group_reversed)
      table.insert(bit_groups_reversed, bit_group)

      -- start a new bit group
      bit_group_reversed = {}
      table.insert(bit_group_reversed, tonumber(binary_str:sub(i,i)))
    end
  end

  if #bit_group_reversed > 0 then
    while #bit_group_reversed < 7 do
      table.insert(bit_group_reversed, 0)
    end

    local bit_group = reverse_table(bit_group_reversed)
    table.insert(bit_groups_reversed, bit_group)
  end

  return reverse_table(bit_groups_reversed)
end

-- given a series of 7-bit groups, assigns 1 as the most significant bit (MSB)
-- for every group except for the last one, which is assigned an MSB of 0,
-- signaling that it is the last byte in the variable length integer
function assign_msbs(bit_groups)
  local bytes = {}

  for i, bit_group in ipairs(bit_groups) do
    local byte = {}
    if i == #bit_groups then
      table.insert(byte, 0)
    else
      table.insert(byte, 1)
    end

    for i, bit in ipairs(bit_group) do
      table.insert(byte, bit)
    end

    table.insert(bytes, byte)
  end

  return bytes
end

function encode_number(number)
  local binary_str = in_binary(number)
  local bit_groups = assign_msbs(seven_bit_groups(binary_str))

  local byte_strs = {}
  for i, bit_group in ipairs(bit_groups) do
    byte_strs[i] = table.concat(bit_group)
  end

  local bytes = {}
  for i, v in ipairs(byte_strs) do
    bytes[i] = tonumber(v, 2)
  end

  return bytes
end

function vlq.encode(numbers)
  local bytes = {}

  for i, number in ipairs(numbers) do
    for i, byte in ipairs(encode_number(number)) do
      table.insert(bytes, byte)
    end
  end

  return bytes
end

function vlq.decode(bytes)
  local numbers = {}
  local number = ""

  for i, byte in ipairs(bytes) do
    local binary_str = leftpad(in_binary(byte), 8, "0")

    for i = 2, #binary_str do
      number = number .. binary_str:sub(i,i)
    end

    if binary_str:sub(1,1) == "0" then
      table.insert(numbers, tonumber(number, 2))
      number = ""
    end
  end

  if #number > 0 then
    error("incomplete byte sequence")
  end

  return numbers
end

return vlq
