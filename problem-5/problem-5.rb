# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

factors = {}

(2..20).each do |n| 
  f = n.prime_division
  f.each do |prime, pow|
    highest_pow = factors.fetch(prime, 0)
    factors[prime] = pow if pow > highest_pow
  end
end

puts factors.inject(1) {|sum, (prime, pow)| sum * (prime**pow)}