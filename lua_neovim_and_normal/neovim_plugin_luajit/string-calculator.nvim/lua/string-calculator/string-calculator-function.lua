local M = {}

M.string_calculator = function(input)
  local sum = 0

  for number in input:gmatch("%d+") do
    sum = sum + tonumber(number)
  end
  return sum
end

return M
