"""Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types."""

#my answer:
def find_short(s)
  # Split the input string into words, then map to an array of word lengths
  word_lengths = s.split.map { |word| word.length }

  # Find the minimum word length using the min method
  shortest_word_length = word_lengths.min

  # Return the minimum word length
  return shortest_word_length
end

#better answer:
def find_short(s)
  s.split.map(&:size).min
end
