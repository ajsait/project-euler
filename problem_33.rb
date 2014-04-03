n_prod = 1
d_prod = 1

0.upto(9) do |i|
  (0).upto(i-1) do |d|
    (0).upto(d-1) do |n|
      if ((n*10 + i) * d == n*(i*10+d))
        n_prod *= n
        d_prod *= d
      end
    end
  end
end

puts d_prod/(n_prod.gcd d_prod)