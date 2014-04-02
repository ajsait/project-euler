def determine_max(n)
  number_of_digits = 1
  max = 1
  until (max = (number_of_digits * (9 ** n))).to_s.length == number_of_digits
    number_of_digits += 1
  end
  max
end

def sum_of_nth_powers(number,n)
  number.to_s.split(//).inject(0){|result, x| result + x.to_i**n}
end

sum = 0
power = 5
determine_max(power).downto(2) do |x|
  sum += x if x == sum_of_nth_powers(x, power)
end

puts sum

