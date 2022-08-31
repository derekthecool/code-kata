local M = {}

M.string_calculator = function(input)
  print('You sent ' .. input)
  return string.reverse(input)
end

return M
