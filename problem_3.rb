require 'prime'

def largest_prime_factor(number)
  factors = Prime.prime_division(number)
  factors.last.first
end

puts largest_prime_factor(600851475143)
