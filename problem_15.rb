def factorial(n)
  n.downto(1).inject(:*)
end

n = ARGV.first.to_i
puts factorial(2*n) / factorial(n)**2   