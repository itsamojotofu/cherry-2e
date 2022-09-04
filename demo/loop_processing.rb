numbers = [1,2,3,4,5,6,7,8,9,10]
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

# block - delete_if

numbers.delete_if do |n|
  n.odd?
end

puts numbers  