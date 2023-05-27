"""Implement a function that accepts 3 integer values a, b, c. The function should return true if a triangle can be built with the sides of given length and false in any other case.

(In this case, all triangles must have surface greater than 0 to be accepted)."""

#my answer
def is_triangle(a, b, c)
  # Check if the sum of any two sides is greater than the third side
  return a + b > c && a + c > b && b + c > a
end

#another answer
def isTriangle(a,b,c)
   a, b, c = [a, b, c].sort
   a + b > c
end
