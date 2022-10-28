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
  
# 4.9

numbers = [10,20,30,40,50,60]
puts numbers[2..]
puts numbers[..1]

# 4.10

# 4.10.1 - times 

sum = 0
5.times {|n| sum+= n}
sum # => 10

sum = 0
5.times { sum+= 1}
sum # => 5

# 4.10.2 - upto and downto 

a = []
10.upto(14){|n| a << n}
a

a = []
14.downto(10){|n| a << n}
a

# 4.10.3 - step 

a = []
1.step(10, 3) {|n| a << n}
a

# 4.10.4 - while vs until
# be careful for infinite loop

a = []
while a.size < 5
  a << 1
end
a

a = [1,2,3,4,5]
until a.size <= 3
  a.delete_at(-1)
end
a

# 4.10.5 - for
numbers = [1,2,3,4]

for n in numbers
  sum += n
end
# => 10
sum

sum = 0
for n in numbers do sum += n end
sum

# 4.10.6 - loop

while true
  # infinite loop
end

loop do
  # infinite loop
end

numbers = [1,2,3]

# loop do can be replaced with while true
loop do
  n = numbers.sample
  puts n
  break if n == 3
end

# 4.10.7 - recursive call

def factorial(n)
  n > 0 ? n * factorial(n -1) : 1
end

factorial(5)

# 4.11 - control loop methods

# 4.11.1 - break

numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
  puts n
  # break can return value
  break 123 if n == 5
end

# 4.11.2 - throw and catch

fruits = ['apple','banana','grape']
numbers = [1,2,3]

catch :done do
  fruits.shuffle.each do |f|
    numbers.shuffle.each do |n|
      puts "#{f}, #{n}"
      if f == 'grape' && n == 3
        # escape from the all loops
        throw :done, 'you got the third grape!'
      end
    end
  end
end

# 4.11.3 - dif between break and return

def greet(country)
  return 'Please enter country' if country.nil?

  if country == 'Japan'
    "こんちは"
  else
    "Hello"
  end
end

def calc_w_break
  numbers = [1,2,3,4]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    break if n.even?
  end
  target * 10
end

def calc_w_return
  numbers = [1,2,3,4]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    return if n.even?
  end
  # return nil because return gets out of not just loop but also method
  target * 10 
end

# 4.11.4 - next

numbers = [1,2,3,4,5]

numbers.each do |n|
  next if n.odd?
  puts n
end