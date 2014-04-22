require 'prime'

def twice_square? number
  squareTest = Math.sqrt(number/2)
  squareTest == squareTest.to_i
end
number = 1
found = false

until found
  number += 2
  next if Prime.prime?number
  found = true
  Prime.each(number) do |x|
    if twice_square?(number-x)
      found = false
      break
    end
  end
end
puts number