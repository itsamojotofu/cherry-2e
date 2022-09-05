nums = [1,2,3,4,5]
puts nums.sum

# sum up each element muptiplied by 2
puts nums.sum {|n| n*2}

#assign default starting point
puts nums.sum(10)

# use case with strings
letters = ['l','e','t','t','e','r']
puts letters.sum('')

# with join method
puts letters.join
puts letters.join('_')