max_p = 0
max_solutions = 0

(2..1000).step(2).each do |p|
  solutions = 0
  2.upto(p/3).each do |a|
    solutions +=1 if(p*(p-2*a) % (2*(p-a))) == 0
  end
  if solutions > max_solutions
    max_solutions = solutions
    max_p = p
  end
end

puts max_p
