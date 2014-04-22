def pentagonal? number
  penTest = (Math.sqrt(1 + 24 * number) + 1.0) / 6.0
  penTest == penTest.to_i
end


found = false
i = 1
until found
  i += 1
  n = i * (3 * i - 1) / 2
  (i-1).downto(1) do |j|
     m = j * (3 * j - 1) / 2
     if pentagonal?(n-m) and pentagonal?(n+m)
       puts n - m 
       found = true
     end
  end
end