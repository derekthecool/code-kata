local test = require 'u-test'

local StringCalculator = require 'StringCalculator'

test.StringCalculatorTest_ShouldReturn0 = function ()
  test.equal(1, StringCalculator(""))
end
