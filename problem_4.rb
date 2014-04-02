class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

max = 0

999.downto(100) do |i|
  i.downto(100) do |j|
    result = i * j
    max = result if result > max && result.palindrome?
    break if result <= max
  end
end

puts max