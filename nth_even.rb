def nth_even(n)
    i = 1
    evens = 0
    until i == n
      evens += 2
      i += 1
    end
    return evens

    # n * 2 - 2
  end

  puts nth_even(3)