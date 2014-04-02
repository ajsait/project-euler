fibonacci = [1,1]

until fibonacci.last.to_s.length == 1000
  fibonacci << fibonacci.last + fibonacci[fibonacci.length-2]
end

puts fibonacci.last
puts fibonacci.length
