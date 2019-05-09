def dictionary
  translate = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4",
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  words.map do |word|
    translate.map do |k, v|
      if word = k
        word.replace(value)
      end
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.map do |tweet|
    puts word_substituter(tweet)
  end
end 

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140  
    word_substituter(tweet)
  else 
    tweet 
  end 
end 

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 
