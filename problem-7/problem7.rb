# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

def prime?(n)
  !(2..Math.sqrt(n)).select {|x| x==2 or x%2 != 0}.any? {|d| n % d == 0 }
end

primes = []
n = 2
while primes.size < 10001
  primes << n if prime?(n)
  n += 1
end

puts "#{primes.size} primes found."
puts primes.last