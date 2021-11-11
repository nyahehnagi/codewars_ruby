def find_next_square(sq)
    # Return the next square if sq is a perfect square, -1 otherwise
    square_root =  Math.sqrt(sq)
    return square_root % square_root.floor == 0  ?  (square_root + 1) ** 2  :  -1
end

puts find_next_square(26)
  