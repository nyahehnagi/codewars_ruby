def turkish_number(num)
    # your code here
    digits = {
    0 => "sıfır",
    1 => "bir",
    2 => "iki",
    3 => "üç",
    4 => "dört",
    5 => "beş",
    6 => "altı",
    7 => "yedi",
    8 => "sekiz",
    9 => "dokuz"}

    tens = {
    1 => "on",
    2 => "yirmi",
    3 => "otuz",
    4 => "kırk",
    5 => "elli",
    6 => "altmış",
    7 => "yetmiş",
    8 => "seksen",
    9 => "doksan"
    } 

    digit = num % 10
    ten = num / 10

    if num < 10
        value = "#{digits[digit]}"
    elsif digit == 0
        value = "#{tens[ten]}"
    else
        value = "#{tens[ten]} #{digits[digit]}"
    end
    
    return value
end

puts turkish_number(10)