require 'prime'
target_consecutive = 4
target_prime_factors = 4
consecutive = 0
number = 2*3*5*7

until consecutive == target_consecutive
  if Prime.prime_division(number).size == target_prime_factors 
    consecutive += 1
  else
    consecutive = 0
  end
  number += 1
end

puts number