def factorial(n)
  n.downto(1).inject(:*)
end

puts factorial(100).to_s.split(//).inject(0){|result, x| result+x.to_i}