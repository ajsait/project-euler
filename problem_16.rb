exp = ARGV.first.to_i

puts (2**exp).to_s.split(//).inject(0){|result, x| result += x.to_i}