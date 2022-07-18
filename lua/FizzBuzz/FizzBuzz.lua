local function FizzBuzz(inputNumber)
  if inputNumber % 3 == 0 and inputNumber % 5 == 0 then
    return 'FizzBuzz'
  elseif inputNumber % 3 == 0 then
    return 'Fizz'
  elseif inputNumber % 5 == 0 then
    return 'Buzz'
  else
    return inputNumber
  end

end

return FizzBuzz
