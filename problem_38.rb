require 'set'
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

  def concat(b)
    c = b
    n = self
    until c == 0
      n *= 10
      c /= 10
    end
    n + b
  end
end

max = 0
9999.downto(1).each do |x|
  concat_product = 2.upto(x > 999 ? 2 : x > 99 ? 3 : x > 9 ? 4 : 5).inject(x){|result, i| result.concat(x*i)}
  max = concat_product if concat_product.pandigital? and concat_product > max
end

puts max