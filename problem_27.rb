require 'prime'

max = 0
a_max = 0
b_max = 0

-999.upto(999) do |a|
  -999.upto(999) do |b|
    n = 0
    while Prime.prime?(n**2 + a*n + b)
      n += 1
    end

    if n > max
      max = n
      a_max = a
      b_max = b
    end
  end
end

puts a_max * b_max