def divisible_count(x, y, k)
    # get first value divisble by k
    while x % k != 0
        x += (k - x % k)
    end

    # get last value divisible by k
    while y % k != 0
        y -= y % k
    end

    # get size of range
    if(x > y)
        return 0
    else
        return (y - x) / k + 1
    end

  end

  puts divisible_count(6,11,2)