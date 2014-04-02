require 'prime'

def reciprocal_cycle_count(n)
  count = 1
  remainder = 1
  until (remainder = remainder * 10 % n) == 1
    count += 1
  end
  count
end

d = 0
max_length = 0
Prime.each(1000) do |p|
  unless 10 % p == 0
    length = reciprocal_cycle_count p
    max_length = length if length > max_length
    d = p if max_length == length
  end
end

puts d
