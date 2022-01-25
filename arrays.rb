test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad - it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

test_tweets.each do |tweet|
  banned_phrases.each do |phrase|  
    if tweet.include?(phrase) 
      tweet.gsub!( phrase , "CENSORED")
    end
  end
  puts tweet
end


# [1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]
input_array = [1, 2, 3, 4, 5]
p input_array.map{|num| num + 1}

add_one = Proc.new{|num| num + 1}
p input_array.map &add_one

p input_array.inject([]){|sum, number| sum << number + 1}

#[1, 3, 5, 4, 2] => [1, 2, 3, 4, 5]
input_array = [1, 3, 5, 4, 2]
p input_array.sort 

#[1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
input_array = [1, 3, 5, 4, 2]
p input_array.map{|num| num + 1}.sort

#[1, 2, 3, 4, 5] => 15 (the sum)
input_array = [1, 2, 3, 4, 5]
p input_array.sum

#[1, 2, 3, 4, 5] => 30 (twice the sum)
input_array = [1, 2, 3, 4, 5] 
p input_array.sum * 2


