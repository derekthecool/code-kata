local test = require 'u-test'

local FizzBuzz = require 'FizzBuzz'

test.FizzBuzzTest_ShouldReturnNumber = function()
  -- TODO: Change return type to number
  test.equal(1, FizzBuzz(""))
end
