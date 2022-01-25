
require 'date'

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

#{ a: 1, b: 2 } => { a: 2, b: 3 }
input_hash = { a: 1, b: 2 }
p input_hash.transform_values {|value| value + 1} 

#{ a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }
input_hash = { a: 2, b: 5, c: 1 } 
p input_hash.transform_values{|value| input_hash.values.sort }


#{ a: 2, b: 5, c: 1 } => [1, 2, 5]
input_hash = { a: 2, b: 5, c: 1 }
p input_hash.values.sort
p input_hash.keys.sort
p input_hash.keys.sort.zip(input_hash.values.sort).to_h


#{ a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }
input_hash = { a: 1, b: 2, c: 3 }
p input_hash.invert



# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

houses_prices = {["Basingstoke and Deane", "Tadley South"]=>
  {:count=>1,
   :average=>94000,
   :transactions=>
    [[94000,
      "RG26 3UR",
      Date.parse("1995-09-01")]]},
 ["Camden", "Cantelowes"]=>
  {:count=>1,
   :average=>215000,
   :transactions=>
    [[215000,
      "NW1 9UB",
      Date.parse("1995-03-10")]]},
 ["Conwy", "Capelulo"]=>
  {:count=>1,
   :average=>40000,
   :transactions=>
    [[40000,
      "LL34 6RW",
      Date.parse("1995-03-24")]]},
 ["Luton", "Leagrave"]=>
  {:count=>1,
   :average=>30500,
   :transactions=>
    [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
 ["Melton", "Asfordby"]=>
  {:count=>1,
   :average=>37500,
   :transactions=>
    [[37500,
      "LE14 3YP",
      Date.parse("1995-08-31")]]},
 ["Sheffield", "Beighton"]=>
  {:count=>1,
   :average=>41950,
   :transactions=>
    [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
 ["Stratford-on-Avon", "Wellesbourne East"]=>
  {:count=>1,
   :average=>70500,
   :transactions=>
    [[70500,
      "CV35 9RZ",
      Date.parse("1995-03-24")]]},
 ["Sunderland", "Millfield"]=>
  {:count=>1,
   :average=>26000,
   :transactions=>
    [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
 ["Taunton Deane", "Bishop's Lydeard"]=>
  {:count=>1,
   :average=>51500,
   :transactions=>
    [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
 ["Test Valley", "St Mary's"]=>
  {:count=>1,
   :average=>60000,
   :transactions=>
    [[60000,
      "SP10 1JG",
      Date.parse("1995-06-23")]]}}

#houses_prices.each do |district_ward, transactions|
#  district, ward = district_ward
#  transactions[:transactions].each do |transaction|
#    price, postcode, date = transaction
#    puts "A house was sold in #{district}, #{ward} for #{price} on #{date} "
#  end
#end


def print_prices(houses_prices)
  raw_data =  houses_prices.map do |district_ward, transactions|
    (district_ward + transactions[:transactions].each { |value| value } ).flatten
  end
  

  print raw_data

  raw_data.each do |transaction|
    district, ward, price, postcode, date = transaction
    puts "A house was sold in #{district}, #{ward} for #{price} on #{date} "
  end
end

print_prices(houses_prices)