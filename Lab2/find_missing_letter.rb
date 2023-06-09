"""Find the missing letter
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'
(Use the English alphabet with 26 letters!)"""

#My answer:
def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first
end

#another answer:
def find_missing_letter(arr)
  arr[0...-1].each_with_index { |val, ind| return val.next if val.next != arr[ind+1] }
  return nil
end
