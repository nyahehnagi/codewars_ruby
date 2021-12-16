TIP_PERCENTAGE = 0.15

def graceful_tipping(bill)
    bill_and_tip = bill + (bill * TIP_PERCENTAGE).ceil
    devisor = get_devisor(bill_and_tip)
    puts "Tip: #{bill * TIP_PERCENTAGE}"

    return calculate_elegant_number(bill_and_tip, devisor)
    
end

def get_devisor(bill) 

    found_match = false
    order_of_magnitude = 1
    devisor = 1
 
    until found_match do
        puts "order of magnitide #{order_of_magnitude}"
        puts "order of magnitide * 10  #{order_of_magnitude * 10}"
        puts "devisor #{devisor}"
        
        if (bill >= order_of_magnitude) && (bill < (order_of_magnitude * 10))
            puts = "Found match"
            match = true
        else
            puts "Here"
            if devisor == 1
                devisor = 5
            else
                devisor *= 10
            end
            order_of_magnitude =  order_of_magnitude * 10
            match = false
        end

        found_match = match
    end

    return devisor
end

def calculate_elegant_number(number, devisor)

    modulo = number % devisor
    puts "number: #{number}"
    puts "modulo #{modulo}"
    puts "devisor #{devisor}"
    
    if modulo != 0
        number += (devisor - modulo)
    end
    return number
end

#puts get_devisor(99)
puts graceful_tipping(99) 