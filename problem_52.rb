class Integer
  def permutation? number
    self.to_s.split(//).sort == number.to_s.split(//).sort
  end
end

found = false
x = 1
until found
  break if x.permutation? (2*x) and x.permutation?(3*x) and x.permutation?(4*x) and x.permutation?(5*x) and x.permutation?(6*x)
  x += 1
end

puts x