local test = require 'u-test'

local FizzBuzz = require 'FizzBuzz'

test.FizzBuzzTest_ShouldReturnNumber = function()
  test.equal(1, FizzBuzz(1))
end

test.FizzBuzzTest_ShouldReturnFizz = function()
  for i = 3, 100, 3 do
    if i % 5 == 0 then return end
    test.equal('Fizz', FizzBuzz(i))
  end
end

test.FizzBuzzTest_ShouldReturnBuzz = function()
  for i = 5, 100, 5 do
    if i % 3 == 0 then return end
    test.equal('Buzz', FizzBuzz(i))
  end
end

test.FizzBuzzTest_ShouldReturnFizzBuzz = function()
  for i = 1, 100 do
    if i % 3 ~= 0 and i % 5 ~= 0 then return end
    test.equal('FizzBuzz', FizzBuzz(i))
  end
end
