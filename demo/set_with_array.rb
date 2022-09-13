# set expression is useful with array

a = [1,2,3,4,5]
b = [4,5,6]
puts a|b # sum
puts a-b # diffrence
puts "----"
puts a&b # common

# Set is more effective than Array

require 'set'

a = Set[1,2,3]
b = Set[3,4,5]

puts a|b # sum
puts a-b # diffrence
puts "----"
puts a&b # common