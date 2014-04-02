require 'prime'

def nth_prime(n)
  Prime.first(n).last
end

puts nth_prime 10_001
