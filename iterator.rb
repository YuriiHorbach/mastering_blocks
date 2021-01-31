def three_times_1 
  yield
  yield
  yield
end

three_times_1 do
  puts "Ho!"
end

p '-'*15

def three_times_2  
  1.upto(3) do |count|
    yield(count)
  end
end

three_times_2 do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end