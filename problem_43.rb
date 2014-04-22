arr = [0,1,2,3,4,5,6,7,8,9]

sum = 0
arr.permutation.each do |d|
  next if d[0] == 0
  sum += d.join.to_i if  d[3] % 2 == 0 and d[2..4].join.to_i % 3 == 0 and d[5] % 5 == 0 and d[4..6].join.to_i % 7 == 0 and  d[5..7].join.to_i % 11 == 0 and d[6..8].join.to_i % 13 == 0 and d[7..9].join.to_i % 17 == 0
end

puts sum

# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17