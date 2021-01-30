class Order
  attr_accessor :email, :amount
  
  def initialize (email, amount)
    @email = email
    @amount = amount
  end

  def to_s
    "#{@email} #{@amount}"
  end
  
end

orders = []

1.upto(5) do |n|
  orders << Order.new("client#{n}@ggg.com", n * 10)
end

puts orders