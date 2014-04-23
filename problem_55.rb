class Integer
  def palindrome?
    self == self.reverse
  end
  def reverse
    self.to_s.reverse.to_i
  end
  def lychrel?
    number = self
    50.times do |variable|
      number += number.reverse
      return false if number.palindrome?
    end
    true
  end
end


count = 0
1.upto(10_000).each do |x|
  count += 1 if x.lychrel?
end

puts count

