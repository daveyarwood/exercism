diff = {};

local function sum_fn(f_each, f_total)
  return function(n)
    local sum = 0

    for x = 1, n do
      sum = sum + f_each(x)
    end

    return f_total(sum)
  end
end

local function identity(x) return x end
local function squared(x)  return x^2 end

diff.square_of_sums = sum_fn(identity, squared)
diff.sum_of_squares = sum_fn(squared, identity)

function diff.difference_of_squares(n)
  return diff.square_of_sums(n) - diff.sum_of_squares(n)
end

return diff;
