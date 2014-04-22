require 'prime'
class Integer
  def permutation? number
    self.to_s.split(//).sort == number.to_s.split(//).sort
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
primes = (1_000..10_000).select{|x| Prime.prime? x}

result = ""
primes.each_with_index do |x,i|
  primes[i+1..primes.size].each do |y|
    next unless x.permutation? y
    average = (x+y)/2
    puts x.concat(average).concat(y) if Prime.prime? average and average.permutation? x
  end
end

