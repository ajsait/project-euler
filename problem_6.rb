puts (1..100).inject(:+)**2 - (1..100).inject(0) {|result, x| result += x**2}
