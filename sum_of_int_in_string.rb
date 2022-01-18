def sum_of_integers_in_string(s)
  s.scan(/\d+/).inject(0) {|sum, value| sum += value.to_i}
end

puts sum_of_integers_in_string("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog")