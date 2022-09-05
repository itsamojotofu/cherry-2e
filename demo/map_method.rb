# with each method
nums = [1,2,3,4,5]
times_10_nums = []
nums.each do |n|
  times_10_nums << n * 10
end

puts times_10_nums

# with map method

times_20_nums = nums.map{ |n| n *20}

puts times_20_nums