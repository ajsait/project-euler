class Integer
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

three_digit_numbers = (100..999)
result = three_digit_numbers.map do |x| 
          products = three_digit_numbers.map do |e| 
                      e * x 
                    end
          palindromes = products.select {|num| num.palindrome?}
          palindromes.empty? ? 0 : palindromes.max
        end

puts result.max


