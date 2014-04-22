require 'prime'

count = 0

Prime.each(1_000_000) do |x|
  arr = x.to_s.split(//)
  catch (:done) do
    (arr.size - 1).downto(1).each do |y|
      rotation = arr.rotate(y)
      throw :done if not Prime.prime? rotation.join.to_i
    end
    count += 1 
  end
end

puts count