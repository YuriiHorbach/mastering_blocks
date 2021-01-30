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


