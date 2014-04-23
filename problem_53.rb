def factorial number
  number.downto(1).inject(:*)
end

factorials = []
factorials << 1
1.upto(100).each do |x|
  factorials << factorial(x)
end

count = 0
1.upto(100).each do |n|
  1.upto(n).each do |r|
   count += 1 if factorials[n] / (factorials[r]*factorials[n-r]) > 1_000_000  
  end
end

puts count