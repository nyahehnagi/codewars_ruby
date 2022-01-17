def duplicate_encode(word)
  word.downcase.chars.map { |char| word.count(char) == 1 ? "(" : ")"}.join   
end  

puts duplicate_encode("din")