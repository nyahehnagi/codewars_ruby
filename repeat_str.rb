def repeat_str(n, s)
    str = ""
    n.times do
        str += s
    end
    return str
end

puts repeat_str(2, "test")