nums = [1,2,3,4,5,6,7,8,9,10]

# with select method
odd = nums.select{ |n| n.odd?}
puts odd

# with reject method (simply opposite of select method)

even = nums.reject{ |n| n.odd?}
puts even