VOWELS = /[aeiou]/

def get_count(input_str)
    
    input_str.match(VOWELS) { |m| input_str.new(*m.captures) }
    puts match_data
    return match_data
  end
  

puts get_count("aaaaaeeeiiidddddd")