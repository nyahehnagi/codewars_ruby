def row_sum_odd_numbers(n)
    first_odd_number = calculate_first_oddnumber (n)
    sum = 0
    odd_numbers = []
    n.times do |x|
        odd_numbers << first_odd_number + x * 2
    end
    odd_numbers.each { |odd_number| sum += odd_number }
    return sum
  end

def calculate_first_oddnumber (n)
    first_oddnumber = 1
    n.times do |x|
        first_oddnumber += x * 2
    end
    return first_oddnumber
end

puts row_sum_odd_numbers (4)