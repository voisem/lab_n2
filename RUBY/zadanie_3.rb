input = gets.chomp.split
output = []
input.each_with_index do |number, index|
  sum = number.chars.map(&:to_i).sum
  product = number.chars.map(&:to_i).reduce(:*)
  output << index if sum < product
end
puts output.join(" ")
