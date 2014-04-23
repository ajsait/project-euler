upperbound = 100
prev_1 = 2 
n = 3

3.upto(upperbound).each do |i|
  a = (i % 3 == 0) ? 2 * (i / 3) : 1
  prev_1, n = n, a * n + prev_1
end

puts n.to_s.chars.inject(0){|result,x| result + x.to_i}