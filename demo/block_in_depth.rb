fruits = ['apple','lemon','grape']

# 4.8.1
# convenient when want to use index
fruits.each_with_index {|f,i| puts "#{i}:#{f}"}

# 4.8.2
fruits.map.with_index {|f,i| puts "#{i}:#{f}"}
# with_index can be combined with others
fruits.delete_if.with_index {|f,i| f.include?('a')} # => lemon

# loop method return enumerator object
fruits = ['apple','lemon','grape']
p fruits.each
p fruits.delte_if
