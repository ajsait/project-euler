d = []
i = 1
until d.size >= 1_000_000
  d.concat(i.to_s.split(//))
  i+=1
end

puts d[0].to_i * d[9].to_i * d[99].to_i * d[999].to_i * d[9999].to_i * d[99999].to_i * d[999999].to_i