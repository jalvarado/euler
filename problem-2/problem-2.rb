#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
#	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib(n)
	return 1 if n == 0 or n == 1

	return fib(n-1) + fib(n-2)
end
n = 1
sum = 0
while (v = fib(n)) < 4000000
	puts "fib(#{n}) = #{v}"
	sum += v if v%2 == 0
	n += 1
end

puts sum
