def remove_every_other(arr)
    return_array = []
    arr_length = arr.length()
    arr_length.times do |index|
        if (index).even? 
            return_array.push(arr.shift())
        else
            arr.shift()    
        end
    end
    
    return return_array
  end

  puts remove_every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])