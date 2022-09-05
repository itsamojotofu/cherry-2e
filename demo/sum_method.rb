nums = [1,2,3,4,5]
puts nums.sum

# sum up each element muptiplied by 2
puts nums.sum {|n| n*2}

#assign default starting point
puts nums.sum(10)

# use case with string
letters = ['l','e','t','t','e','r']
puts letters.sum('')

# with join method
puts letters.join
puts letters.join('_')

# join is fine with both integer and string
data = ['a','b','1','c','2','3']
puts data.join

# what sum can do, but join cannot do
abc = ['a','b','c']
puts abc.sum('=>') {|n| n.upcase}
