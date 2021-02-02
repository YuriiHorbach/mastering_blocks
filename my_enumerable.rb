module MyEnumerable
  def my_map
    new_array = []
    each do |value|
      new_array << yield(value)
    end
    new_array
  end

  def my_select
    new_array = []
    each do |value|
      new_array << value unless yield(value)
    end
    new_array
  end

  def my_reject
    new_array = []
    each do |value|
      new_array << value if yield value
    end
    new_array
  end

  def my_detect
    new_array = []
    each do |value|
      if yield value 
        new_array << value
        break 
      end
    end
    new_array
  end

  def my_detect2
    each do |value|
      return value if yield value 
    end
    nil
  end

  def my_any?
    each do |item|
      return true if yield item
    end
    false
  end

  def my_reduce value
    sum = value
    each do |item|
      sum = yield(sum, item)
    end
    sum
  end
end