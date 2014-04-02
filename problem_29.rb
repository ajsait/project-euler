require 'set'

set = SortedSet.new

2.upto(100) do |a|
  2.upto(100) do |b|
    set.add(a**b)
  end
end

puts set.length
