require 'humanize'

count = 0

ARGV.first.to_i.downto(1) do |x|
  count += x.humanize.scan(/[A-Za-z]/).length
end

puts count