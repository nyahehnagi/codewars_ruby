def dice_game(first_to)
    player_one_win_count = 0
    player_two_win_count = 0
    
    while  player_one_win_count < first_to && player_two_win_count < first_to do
        puts "New Round!" 
        puts "Rolling Dice for You"
        dice_one = rand(6) + 1
        dice_two = rand(6) + 1
        player_one_total = dice_one + dice_two

        puts "You rolled #{dice_one} and #{dice_two}! for a total of #{player_one_total}"

        puts "Rolling Dice for your Opponent"
        dice_one = rand(6) + 1
        dice_two = rand(6) + 1
        player_two_total = dice_one + dice_two
        puts "Your Opponent rolled #{dice_one} and #{dice_two}! for a total of #{player_two_total}\n\n"

        result = player_one_total <=> player_two_total
        if result == 1
            player_one_win_count += 1
        elsif result == -1
            player_two_win_count 
        end
        
    end

    return player_one_win_count > player_two_win_count

end

puts dice_game (2)