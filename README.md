# Codewars_Ruby
## Q1:Write a function that takes in a string of one or more words, and returns the same string,
but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
```answer:
my answer:
def spin_words(string)
  new_string = ""
  string.split(" ").each {|word| word.length > 4 ? new_string+=  word.reverse!+ " " : new_string+= word + " " }
  new_string[0..-2]
end
better answer1:
def spin_words(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end

better answer2:
def spin_words(string)
  tokens = string.split(' ')
  newTokens = []
  tokens.each do |token|
    if token.size >= 5
      token.reverse!
    end
    newTokens.push(token)
  end
  return newTokens.join(' ')
end

better answer3:
def spin_words(string)
  string.split.map{ |s| s.length > 4 && s.reverse! || s }.join(' ')
end
 
