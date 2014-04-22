factorials = Hash.new(1)

def factorial(n)
  n.downto(1).inject(:*)
end

1.upto(9).each do |x|
  factorials[x] = factorial(x)
end
sum = 0
2540160.downto(3).each do |x|
  sum += x if x == x.to_s.split(//).inject(0) {|result, d| result + factorials[d.to_i]}
end

puts sum

