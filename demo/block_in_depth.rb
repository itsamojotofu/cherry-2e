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
