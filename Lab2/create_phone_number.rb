"""Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example
createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
The returned format must be correct in order to complete this challenge.

Don't forget the space after the closing parentheses!"""

#my answer
def create_phone_number(numbers)
 "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end

#another answer:
def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

#another answer:
def createPhoneNumber(digits)
  area_code, prefix, *extension = digits.each_slice(3).map(&:join)
  "(#{area_code}) #{prefix}-#{extension.join}"
end
