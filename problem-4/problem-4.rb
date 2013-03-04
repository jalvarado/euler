# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
  num_str = num.to_s

  half = num_str.length / 2

  first_half = num_str[0...half]
  last_half = num_str[half+(num_str.size % 2 == 0 ? 0 : 1)..num_str.length-1]

  first_half == last_half.reverse
end

three_digits = (1...1000).to_a

puts three_digits.product(three_digits).map {|x| x.first * x.last}.uniq.select {|n| palindrome?(n)}.sort
