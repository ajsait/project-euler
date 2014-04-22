require 'prime'

class Integer
  def pandigital?
    digits = 0
    count = 0
    temp = 0
    n = self

    until n == 0
      temp = digits
      digits = digits | 1 << ((n%10)-1)
      return false if temp == digits
      count += 1
      n /= 10
    end
    digits == (1 << count) - 1
  end
end

max = 0
Prime.each(7654321) do |x|
  max = x if x.pandigital?
end

puts max
