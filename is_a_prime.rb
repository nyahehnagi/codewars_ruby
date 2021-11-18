# Test if number is prime
def isPrime(num)
    # Edge case
    return false if num <= 1
    return true if num == 2 #only even prime
    return false if num.even? == true

    sqrt = Math.sqrt(num)

    i = 3
    while i <= sqrt
        if num % i == 0
            return false 
        end
        i+=2
      end

    return true

 end



puts isPrime(4)
puts isPrime(100)
puts isPrime(999)
puts isPrime(958297)
puts isPrime(-7)