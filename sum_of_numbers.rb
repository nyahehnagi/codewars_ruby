def get_sum(a,b)
    if a > b
        range_start = b
        range_end = a        
    else
        range_start = a
        range_end = b
    end
        
    return (range_start..range_end).to_a.sum
    
  end
