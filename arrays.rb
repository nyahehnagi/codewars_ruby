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

# how do I do this with a regular expression.. and a one liner?
# I want to turn the phrases into one regular expression like sucks|bad|etc 
# TODO Work this out
regexp = Regexp.new(banned_phrases.join("|"))
match_data = regexp.match("President Presidentname is a danger to society. I hate that he's so bad - it sucks.")
p match_data.captures
