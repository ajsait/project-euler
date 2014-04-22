class Integer
  def palindrome?
    binary = self.to_s(2)
    self.to_s == self.to_s.reverse and binary == binary.reverse
  end
end


puts 1_000_000.downto(1).select{ |x| x.palindrome? }.inject(:+)