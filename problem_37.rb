require 'prime'

def is_truncatable_prime?(number, method)
  arr = number.to_s.split(//)
  until arr.empty?
    return false unless Prime.prime? arr.join.to_i
    arr.send(method)
  end
  true
end

count = 0
sum = 0

Prime.each do |x|
  break if count == 11
  next if x <= 7
  if (is_truncatable_prime?(x,:pop) and is_truncatable_prime?(x,:shift))
    count += 1
    sum += x
  end
end

puts sum
