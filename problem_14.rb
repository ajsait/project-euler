def next_for_even(n)
  n/2
end

def next_for_odd(n)
  3 * n + 1
end

longest_sequence = []
1_000_000.downto(1) do |current|
sequence = []  
count = 1
until current == 1
  count += 1
  sequence << current
  current = current%2 == 0 ? next_for_even(current) : next_for_odd(current) 
end
longest_sequence = sequence if sequence.length > longest_sequence.length
end

puts longest_sequence.first
