max_sum = 0

1.upto(99).each do |a|
  1.upto(99).each do |b|
    sum = (a**b).to_s.split(//).inject(0){|result, x| result + x.to_i}
    max_sum =  sum if  sum > max_sum
  end  
end

puts max_sum