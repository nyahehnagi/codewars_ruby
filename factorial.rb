def factorial(n)
    #your code here
    result = 1
    n.times do |count|
        #puts "result: #{result}"
        #puts "count: #{count}"
        result = result * (n - count)    
    end
    return result
  end

  puts factorial(0)

  # 5 * 4 * 3 * 2 * 1)