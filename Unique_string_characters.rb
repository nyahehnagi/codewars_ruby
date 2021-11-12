def solve(a,b)
    unique_characters = ""
    a.each_char{|ch|unique_characters += ch if b.include?(ch) == false }
    b.each_char{|ch|unique_characters += ch if a.include?(ch) == false }
    
  end