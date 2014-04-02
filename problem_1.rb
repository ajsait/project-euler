sum = (1...1000).inject(0) do |result, x| 
  if x % 3 == 0 || x % 5 == 0
    result + x
  else
    result
  end
end

puts sum
