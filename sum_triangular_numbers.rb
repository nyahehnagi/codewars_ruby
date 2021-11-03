def sum_triangular_numbers(n)
    sum = 0
    accumulator = 0
    count = 0
    n.times do
        count += 1 
        accumulator += count
         sum += accumulator 
        end
    return sum
end

puts sum_triangular_numbers (6)