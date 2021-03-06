def make_change(amount, coins)
  @cache = Array.new(amount+1){|i| Array.new(coins.size, i.zero? ? 1 : nil)}
  @coins = coins
  do_count(amount, @coins.length - 1)
end
 
def do_count(n, m)
  if n < 0 || m < 0
    0
  elsif @cache[n][m]
    @cache[n][m]
  else
    @cache[n][m] = do_count(n-@coins[m], m) + do_count(n, m-1)
  end
end
 
puts make_change(ARGV.first.to_i, [1,2,5,10,20,50,100,200])