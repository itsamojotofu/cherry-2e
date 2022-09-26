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