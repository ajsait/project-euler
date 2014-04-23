limit = 1000;
result = 0;

num = 3; 
den = 2;


(limit-1).times.each do |i|
  num += 2 * den
  den = num - den
  result += 1 if num.to_s.size > den.to_s.size
end
 
puts result