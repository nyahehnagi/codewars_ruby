VOWELS = (/[aeiou]/)

def get_count(input_str)
    
  input_str.scan(VOWELS).length

  end
  

puts get_count("iiadddddd")