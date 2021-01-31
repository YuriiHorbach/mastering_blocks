scores = [83, 71, 92, 64, 98, 87, 75, 69]

high_scores = scores.select { |i| i > 80 }

puts high_scores

puts '-'*10

low_scores = scores.reject { |i| i > 80 }

puts low_scores

puts '-'*10

puts scores.any? { |i| i < 70 }

puts '-'*10

puts scores.detect {|i| i < 70 }

puts '-'*10

str_arr = ['you', 'he', 'your', 'their']

puts str_arr.select { |i| i.length > 3}

puts '-'*10

puts str_arr.reject { |i| i.length > 3}

puts '-'*10

puts scores.reject! { |i| i > 70}
puts
puts scores
puts
puts scores.reject! { |i| i.even?}
puts
puts scores

puts 'Enumerable part 2'

scores1 = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores1.map {|el| el * 2}

puts scores_doubled

puts '-'*10

scores_total = scores1.reduce(0) {|sum, el| sum + el}

puts scores_total

puts '-'*10

evens, odds = scores1.partition {|el| el.even?}

print evens
puts
print odds
puts

