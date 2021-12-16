def solution(n)
    # Code here...
    str = ""
    sum = 0
    n.times { |count| str += (count + 1).to_s}
    str.each_char {|char| sum += char.to_i }
    return sum
  end

  puts solution(10)