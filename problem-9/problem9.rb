# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a**2 + b**2 = c**2

# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#(1..500).each do |a|
#  (a..500).each do |b|
#    (b..500).each do |c|
#      if a**2 + b**2 == c**2
#        puts "Found Triplet: (#{a}, #{b}, #{c}) with sum #{a + b + c}"
#      end
#    end
#  end
#end

target = 1000

#(1..target).each do |a|
#  aa = a**2
#  b = a + 1
#  c = a + 1
#
#  while c <= target - a - b
#    bb = b**2
#    while c**2 < aa + bb
#      c = c + 1
#    end
#    if c**2 == aa + bb && a + b + c == 1000
#      puts "Found Triplet: (#{a}, #{b}, #{c}) with a + b + c = 1000"
#      break
#    end
#    b = b + 1
#  end
#end

(1..target).each do |a|
  aa = a**2
  (a..target).each do |b|
    bb = b**2
    c = target - a - b
    cc = c**2
    if cc == aa + bb
      puts "Found Matching triple: (#{a}, #{b}, #{c}) with a product of #{a * b * c}"
    end
  end
end
