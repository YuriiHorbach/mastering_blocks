require 'benchmark'

def h1
  print "<h1>"
  print yield 
  print"</h1>"
end

def h2
  print "<h2>"
  print yield 
  print"</h2>"
end

def tag tag_element
  print "<#{tag_element}>"
  print yield
  print "</#{tag_element}>"
end

def time_it(name)
  elapsed_time = Benchmark.realtime do
    yield
  end
  puts "#{name} took #{elapsed_time}"
end

def with_debugging
  puts "Got Here!"
  result = yield
  puts "Result was #{result}"
end

def with_expectation expect
  sum = yield
  puts "Running test..."
  if expect == sum
    puts "Passed."
  else
    puts "Failed!"
    puts "Expected #{expect}, but got #{sum}"
  end
end

def in_production
  old_environment = @environment
  @environment = :production
  yield
rescue Exception => e
  puts e.message
ensure
  @environment = old_environment
  puts "Reset environment to #{@environment}"
end





h1 {"Breaking news"}
puts 
h2 {"Massive Ruby Discovered"}

puts 
tag(:h1) {'text'}
puts 
tag(:h1) { "Breaking News!" }
puts 
tag(:h2) { "Massive Ruby Discovered" }
puts

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end



with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end



with_expectation(4) { 2 + 2 }
with_expectation(5) { 2 + 2 }

include Benchmark



time_it("Sleepy code") do
  # run some code
  sleep(1)
end
# puts "It took #{elapsed_time}"