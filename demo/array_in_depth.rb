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
