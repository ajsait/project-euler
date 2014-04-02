require 'prime'

def triangle_number(n)
  n * (n + 1) / 2
end

def number_of_divisors(n)
  Prime.prime_division(n).inject(1) {|product, x| product *= x[1] + 1}
end

i = 1
triangle = 1
while true
  triangle = triangle_number(i)
  divisors = Prime.prime?(triangle) ? 2 : number_of_divisors(triangle) 
  break if divisors > ARGV.first.to_i
  i += 1
end

puts triangle