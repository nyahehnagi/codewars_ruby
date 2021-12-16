
def list_squared(m, n)
    range = (m..n)
    return_list = []
    range.each {|item| 
        sum_of_squares = is_sum_of_squares_a_square(get_divisors(item))
        if sum_of_squares > 0 
            return_list << [item,sum_of_squares]
        end
    }
    return return_list
end

def is_sum_of_squares_a_square(array)
    sum = array.inject (0) {|sum, number| sum + (number * number) }
    if  (Math.sqrt(sum) % 1).zero?
        return sum
    else
        return 0
    end
end

def get_divisors(n)

    divisors = []
    square_root = Math.sqrt(n).floor

    square_root.times do |count|
        divisor_check = count + 1
        if (n % divisor_check == 0)
            if n / divisor_check == divisor_check
                divisors << divisor_check
            else
                divisors << divisor_check
                divisors << n /divisor_check
            end
        end
    end
    
    return divisors
end

puts list_squared(1,250)