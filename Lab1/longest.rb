"""Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

Examples:
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz""""

#my answer
def longest(s1, s2)
  # Combine the two input strings into a single string
  combined = s1 + s2

  # Convert the combined string to an array of unique characters
  unique_chars = combined.chars.uniq

  # Sort the unique characters and join them back into a string
  return unique_chars.sort.join
end

#better answer
def longest(a, b)
  (a+b).chars.uniq.sort.join
end
