previous = 0
current = 1
total = 0

until current > 4000000
  previous, current = current, current + previous
  if current % 2 == 0
    total += current 
  end
end 

puts total
