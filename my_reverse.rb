class String
  def my_reverse
    arr = []
    i = 0 
    while i < self.size
      char = self.each_char.to_a
      str = char.each{|i| arr << i.pop}.join('')
      yield str
    end
  end
end

'qwerty'.my_reverse