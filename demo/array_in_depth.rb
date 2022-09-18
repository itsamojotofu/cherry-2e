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

a,*b,c,d = 1,2,3,4,5
puts a
puts "break"
puts b
puts "break"
puts c
puts "break"
puts d

puts "-----"
a = []
b = [2,3]
a.push(1)
a.push(b) #[1, [2, 3]]

# push with splat
a = []
b = [2,3]
a.push(1)
a.push(b) #[1, 2, 3]

fruits = ['grape','orange']
food = 'grape'

case food
when *fruits # = when 'grape', 'orange' 
   puts 'tasty!'
end

# 4.7.7 variadic arguments
def greet(*names)
   "#{names.join('と')}、こんにちは！"
end

greet('田中さん')
greet('田中さん','鈴木さん')
greet('田中さん','鈴木さん','佐藤さん')

def foo(a,*b,c,d)
   puts "a:#{a},b:#{b},c:#{c},d:#{d}"
end

foo(1,2,3,4,5)

# 4.7.8

a = [1,2,3]
b = [-1,0,*a,4,5] # = [-1,0] + a + [4,5]

# 4.7.9

[1, 2, 3] == [1, 2, 3] # true
[1, 2, 3] == [1, 2, 3,4] # false

# 4.7.10

array = %w!apple melon orange! # ['apple', 'melon','orange']
puts array
array = %w(apple melon grape) # ['apple', 'melon','grape']
puts array

#  when want to include blank space

array = %w(apple\ pen melon\ pen grape)
puts array