fruits = ['apple','lemon','grape']

# 4.8.1
# convenient when want to use index
fruits.each_with_index {|f,i| puts "#{i}:#{f}"}

# 4.8.2
fruits.map.with_index {|f,i| puts "#{i}:#{f}"}
