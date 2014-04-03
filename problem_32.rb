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

products = Set.new

2.upto(99) do |m|
  (m > 9 ? 123 : 1234 ).upto(10000 / m + 1) do |n|
    prod = m*n
    number = m.concat n.concat prod
    products.add(prod) if number > 1e8 && number < 1e9 && number.pandigital?
  end
end

puts products.inject(:+)

n = 54321


