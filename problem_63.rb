result = 0;
lower = 0;
n = 1;
 
while lower < 10
    lower = (10**((n-1.0)/n)).ceil
    result += 10 - lower
    n += 1
end

puts result