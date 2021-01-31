def deal 
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Club"]
  if block_given?
    random_face = faces.sample
    random_suits = suits.sample
    yield(random_face, random_suits) if block_given?
  else
    puts "No deal!"
  end
end

deal do |face, suit| 
  puts "Dealt a #{face} of #{suit}"
  sum = face.size + suit.size
  puts "You scored a #{sum}!"
end

puts '-'*10

def deal1 n 
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Club"]
    if block_given?
      n.times  do
        random_face = faces.sample
        random_suits = suits.sample
        res = yield(random_face, random_suits) 
        puts "Score is: #{res}"
      end
    else
      puts "No deal!"
    end
end

deal1(10) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end

# def say
#   yield 'Hi'
# end

# say do |e|
#   puts "#{e}"
# end

# def n_times n
#   1.upto(n) do |count|
#     yield count
#   end
# end

# n_times(5) do |n|
#   puts "#{n} situps"
#   puts "#{n} pushups"
#   puts "#{n} chinups"
# end

p '-'*15

# def progress 
#     yield (0.step(20, 5){ |n| puts n})
# end

def progress
  0.step(100, 10) do |n|
    yield n
  end
end

progress { |percent| puts percent }

p '-'*15


def greet
  yield 
end

greet { |name, age| puts "Hello, #{name}. You don't look #{age}!" }

# greet do 
#   puts "Enter your name"
#   name = STDIN.gets.chomp
#   puts "Enter your age"
#   age = STDIN.gets.to_i
#   puts "Hello, #{name}. You don't look #{age}!" 
# end
