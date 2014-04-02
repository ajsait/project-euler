hash = {}

max = 10000

2.upto(max) do |i|
   sum = 1
   2.upto(i/2) do |j|
      sum += j if (i % j) == 0
   end
   hash[i] = sum
end
sum = 0
hash.keys.sort.each do |i|
   a = hash[i]
   b = hash[a]
   sum+=a if a != b && b == i
end

puts sum