# compare 1..5 with 1...5
puts (1..5).include?(1)
puts (1..5).include?(5)
# 5 is not included on 1...5
puts (1...5).include?(1)
puts (1...5).include?(5)

num = [1,2,3,4,5]

puts num[1..3]

def water_liquid?(temp)
  (0...100).include?(temp)
end

puts water_liquid?(-1)
puts water_liquid?(50)
puts water_liquid?(100)