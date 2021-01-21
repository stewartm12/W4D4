def remove_dups(array)
  new_arr = []
  array.each do |ele|
    if !new_arr.include?(ele)
      new_arr << ele
    end
  end

  new_arr 
end

class Array
  def two_sum
    new_arr = []
    self.each_with_index do |ele1, i1|
      self.each_with_index do |ele2, i2|
        if i2 > i1 && ele1 + ele2 == 0
          new_arr << [i1, i2]
        end
      end
    end
    return new_arr
  end

end

def my_transpose(arr)
  new_arr = Array.new(arr.length){Array.new(arr[0].length)}
  arr.each_with_index do |sub_arr, i|
    sub_arr.each_with_index do |ele, j|
      new_arr[j][i] = ele
    end
  end
  new_arr
end

def stock_picker(stocks)
  max_diff = []
  max_val = 0

  (0...stocks.length - 1).each do |i|
    (i + 1...stocks.length).each do |j|
      if stocks[j] - stocks[i] > max_val 
        max_diff = [i, j]
        max_val = stocks[j] - stocks[i]
      end
    end
  end

  max_diff
end

