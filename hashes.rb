definitions = {
  :bear => "a creature that fishes in the river for salmon.",
  :river => "a body of water that contains salmon, and sometimes bears.",
  :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

#puts "Give me a word"
#puts definitions[gets.chomp.to_sym]

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

  sports = Hash.new()
  
tmp =  players.map { |players| [players[:sport.to_sym], players[:name]] }
tmp.each do |sport_player_pair|
  sport = sport_player_pair[0]
  name = sport_player_pair[1]

  if !sports.has_key?(sport)
    sports[sport] = []
  end

  sports[sport].push(name)
end

p sports

