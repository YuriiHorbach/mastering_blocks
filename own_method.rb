class String

  def my_reverse
      word = ""
      arr1 = self.each_char.to_a
      arr1.size.times{word << arr1.pop}
      yield(word)
  end
  
  def reverse_analogue
      arr = self.chars.reduce{|a, b| b + a }
      yield(arr)
  end
end

"qwerty".my_reverse{|word| puts word}
"string".reverse_analogue{|word| puts word}



