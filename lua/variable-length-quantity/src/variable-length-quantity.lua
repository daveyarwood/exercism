local vlq = {}

local function reverse_table(table)
  -- TODO
end

-- represent a number as a string of 0s and 1s
local function in_binary(number)
  local num_bits = select(2, math.frexp(number))
  local bits = {}

  for i = num_bits, 1, -1 do
    local bit = math.fmod(number, 2)
    bits[i] = bit
    number = (number - bit) / 2
  end

  return table.concat(bits)
end

-- split a binary number string into groups of 7 bits each, padding the largest
-- group with 0's
--
-- e.g.: 10001001 => 0000001 0001001
local function seven_bit_groups(binary_str)
  local bit_groups_reversed = {}
  local bit_group_reversed = {}

  for i = #binary_str, 1, -1 do
    local j = #bit_group_reversed + 1

    if #bit_group_reversed < 7 then
      table.insert(bit_group_reversed, binary_str[i])
    else
      local bit_group = reverse_table(bit_group_reversed)
      table.insert(bit_groups_reversed, bit_group)

      bit_group_reversed = {}
    end
  end

  if #bit_group_reversed > 0 then
    -- TODO: pad bit_group_reversed with 0's

    local bit_group = reverse_table(bit_group_reversed)
    table.insert(bit_groups_reversed, bit_group)
  end

  return reverse_table(bit_groups_reversed)
end

-- given a series of 7-bit groups, assigns 1 as the most significant bit (MSB)
-- for every group except for the last one, which is assigned an MSB of 0,
-- signaling that it is the last byte in the variable length integer
local function assign_msbs(bit_groups)
  -- TODO
end

function vlq.encode(number)
  local binary_str = in_binary(number)
  local bit_groups = seven_bit_groups(binary_str)
  local byte_strs = assign_msbs(bit_groups)

  local bytes = {}
  for i, v in ipairs(byte_strs) do
    bytes[i] = tonumber(byte_strs[i], 2)
  end

  return bytes
end

function vlq.decode(number)
  -- TODO
end

return vlq
