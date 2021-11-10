def stringy(size)
    return_string = ""
    size.times { |count| count.even? ? return_string += "1" : return_string += "0"}
    return return_string
  end

  puts stringy(3)