winning_options = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]



marker = [4, 5, 6, 7]

winning_options.map { |win_condition| puts "Winner, match #{win_condition}" if (win_condition - marker).empty?}





def open_or_close_bracket(array, char)
  if array.count(char) == 1
    return "("
  else
    return ")"
  end
end

def this_is_what_our_map_is_doing(array)
  new_array = []
  array.each do |char|
    new_array << open_or_close_bracket(array, char)
  end

  return new_array
end

map_this_array = ["r", "e", "c", "e", "d", "e"]

array_from_map = this_is_what_our_map_is_doing(map_this_array)

print array_from_map.join
