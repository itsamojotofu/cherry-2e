# compare 1..5 with 1...5
puts (1..5).include?(1)
puts (1..5).include?(5)
# 5 is not included on 1...5
puts (1...5).include?(1)
puts (1...5).include?(5)