def how_much_i_love_you(nb_petals)
    petals = ["not at all", "I love you","a little","a lot","passionately","madly"
        ]

    return  petals[nb_petals % 6]
   end

puts how_much_i_love_you(16)


=begin   
"I love you"
"a little"
"a lot"
"passionately"
"madly"
"not at all"
=end

