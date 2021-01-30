class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |number|
  flyers << Flyer.new("Flyer #{number}", "flyer#{number}@example.com", number * 1000)
end


sum = 0
flyers.each do |item|
  puts "#{item.name} - #{item.miles_flown} miles"  
  sum += item.miles_flown
end

puts "Total miles flown: #{sum}"

puts '-'*10

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each do |company, val|
  puts "Earn #{val}x miles by flying #{company}!"
end

puts'-'*10

flyers.each do |item|
  promotions.each do |company, val|
    puts "#{item.name} could earn #{item.miles_flown * val * 1.0} miles by flying #{company}!"
  end
end