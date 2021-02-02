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

h1 {"Breaking news"}
puts 
h2 {"Massive Ruby Discovered"}