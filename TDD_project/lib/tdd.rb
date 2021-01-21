def remove_dups(array)
  new_arr = []
  array.each do |ele|
    if !new_arr.include?(ele)
      new_arr << ele
    end
  end

  new_arr 
end