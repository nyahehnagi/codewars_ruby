def first_non_consecutive(arr)
    arr.each_index { |index| 
        if arr[index] != arr.last() && arr[index + 1] - arr[index] != 1
            return arr[index + 1]
        end
         }
         return nil
  end

  puts first_non_consecutive([1,2,3,4,6,7,8])