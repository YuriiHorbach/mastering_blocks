cards = ['Jack', 'Queen', 'King', 'Ace', 'Joker']

cards.each do |item|
  puts item.upcase
end

puts '-'*10

cards.each do |item|
  puts "#{item.upcase} - #{item.size}"
end

puts '-'*10

cards2 = {'Jack' => 4, 'Queen' => 5, 'King' => 4, 'Ace' => 3, 'Joker' => 5}

cards2.each do |key, val|
  puts "#{key.upcase} - #{val}"
end

puts '-'*10

cards.shuffle.each do |item|
  puts "#{item.upcase} - #{item.size}"
end

puts '-'*10


cards.reverse_each do |item|
  puts "#{item.upcase} - #{item.size}"
end

puts '-'*10

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |key, value|
  puts "#{key} scored a #{value}!"
end

