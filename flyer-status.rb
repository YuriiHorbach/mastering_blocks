class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts flyers.select {|i| i.miles_flown >= 3000}
puts'-'*10
puts flyers.reject {|i| i.miles_flown >= 3000}
puts'-'*10
puts flyers.any? {|i| i.status == :platinum}
puts'-'*10
puts flyers.detect {|i| i.status == :bronze}
puts'-'*30

platinum, other = flyers.partition {|i| i.status == :platinum}
puts "Platinum"
p platinum
puts "Other"
p other

puts'-'*10

selec_flyers = flyers.map {|el| puts "#{el.name.capitalize} (#{el.status.upcase})"}

puts'-'*10

flown_distances = flyers.map {|el| puts "#{el.name.capitalize} distance in km #{el.miles_flown * 1.6} "}
puts flown_distances

total_distance = flyers.reduce(0) {|sum, el| sum + el.miles_flown }

puts "Total distance: #{total_distance}"

total_flown_distances = flyers.reduce(0) {|sum, el| sum + (el.miles_flown * 1.6) }

puts "Total distance in km: #{total_flown_distances}"

puts'-'*10


puts flyers.select {|i| i.status == :bronze}.map {|el| el.miles_flown * 1.6}.reduce(0,:+)

puts "#{'Top flyer:'.ljust(20,'.')} #{flyers.max_by {|client| client.miles_flown}}"
puts "#{'Economy flyer:'.ljust(20,'.')} #{flyers.min_by {|client| client.miles_flown}}"


