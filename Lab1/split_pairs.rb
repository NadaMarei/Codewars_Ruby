"""Complete the solution so that it splits the string into pairs of two characters. 
If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']"""

#my answer:
def solution(str)
  # Add an underscore at the end if the length of the string is odd
  str += "_" if str.length % 2 != 0

  # Use the scan method with a regular expression to split the string into pairs
  pairs = str.scan(/.{1,2}/)

  return pairs
end

#better answer:
def solution str
  (str + '_').scan /../
end
