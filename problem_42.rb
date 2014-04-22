count = 0
File.open("words.txt", "r") do |f|
  f.each(",") do |word|
    word = word.chomp(",")
    word = word.gsub /"/, ''
    score = word.each_char.inject(0) {|result, c| result + c.downcase.ord - 'a'.ord + 1}
    wordsum = (Math.sqrt(1+8*score) - 1.0) / 2.0
    if wordsum == wordsum.to_i
      count += 1
    end
  end
end

puts count