a = [1,2,3,4,5]
puts a.values_at(0,2,4)
# output the last element in array
puts a[a.size-1]
puts a[-1]
# reuturn 2 elements, startign from the second last item
puts a[-2,2]
# try last method
puts "break"
puts a.last
puts a.last(2)

a[1,3] = 10
puts a
a.push(20)
puts a

puts "break"
# cut off 300
a,b = 100, 200, 300
puts a, b
puts "break"
c,*d = 100, 200, 300
puts c, d
puts "break"
# ignore following values
e,* = 100, 200, 300
puts e