fruits = ['apple','lemon','grape']

# 4.8.1
# convenient when want to use index
fruits.each_with_index {|f,i| puts "#{i}:#{f}"}

# 4.8.2
fruits.map.with_index {|f,i| puts "#{i}:#{f}"}
# with_index can be combined with others
fruits.delete_if.with_index {|f,i| f.include?('a')} # => lemon

# loop method return #Enumerator. that is, with_index is instance method of #Enumerator
fruits = ['apple','lemon','grape']
# <Enumerator: ["apple", "lemon", "grape"]:each>
p fruits.each
#<Enumerator: ["apple", "lemon", "grape"]:delete_if>
p fruits.delete_if

# 4.8.3
# start index from 1
fruits.each.with_index(1) {|f,i| puts "#{i}:#{f}"}

# 4.8.4

dimensions = [
  # [vertical, holizontal]
  [10,20],
  [30,40],
  [50,60],
]

# calculate areas with a block array
areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end

# split a block array into params
dimensions.each do |length, width|
  areas << length * width
end

puts areas

# dimention = [100, 200], index = 0
dimension, index = [[100, 200], 0]
# length = 100, width = 200, index = 0
(length,width),index = [[100, 200], 0]

# 4.8.5
puts "---------"

# _1 is first block parameter 
['1','20','300'].map { puts _1.rjust(3,'0')}
# _1 is first block parameter, _2 is index here
['first','second','third'].map.with_index(1) { puts "#{_2}: #{_1}" }

[[1,2,3],[4,5,6]].each do |values|
  values.each do
    puts _1
  end
end

# 4.8.6

numbers = [1,2,3,4]
sum = 0
puts sum

#sum is block local variable.
numbers.each do |n;sum|
  sum = 10
  sum += n
  puts sum
end

puts sum

# 4.8.7 - other use cases of block

# don't need to add File.close due to the block
File.open('sample.txt','w'). do |file|
  file.puts('１行目のテキストです。')
  file.puts('２行目のテキストです。')
  file.puts('３行目のテキストです。')
end

# 4.8.8 - difference between do...end and {}

a = [1,2,3]

# return nil
a.delete(100)

# nil block return what's inside

# option 1
a.delete(100) do
  puts "NG"
end

# option 2
[1,2,3].delete(100) {"NG"}

# another form of option 1 
a.delete 100 do
  puts "NG"
end