require 'prime'

limit = 1_000_000
sum_arr = []
sum_arr[0] = 0
prime_arr = []

Prime.each(limit).each do |x|
  sum_arr << sum_arr.last + x
  prime_arr << x
end


longest_consecutive = 0
longest_consecutive_prime_sum = 0

i = longest_consecutive
while i < sum_arr.size
  j = i - (longest_consecutive+1)
  until j <= 0
    break if (sum_arr[i] - sum_arr[j]) > limit
    if prime_arr.index(sum_arr[i] - sum_arr[j])
      if i-j > longest_consecutive
        longest_consecutive = i-j
        longest_consecutive_prime_sum = sum_arr[i] - sum_arr[j]
      end
    end
    j -= 1
  end
  i += 1
end

puts longest_consecutive_prime_sum