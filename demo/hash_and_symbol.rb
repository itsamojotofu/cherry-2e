# 5.1

# convert length in another length unit
# meter - 1.00
# feet - 3.28
# inch - 39.37

# 5.2 - hash

{}.class

# 5.2.1 - hash actions

currencies = {'japan' => 'yen', 'us'  => 'dollar', 'india'  => 'ruppe'}
# add 
currencies['italy'] = 'euro'
# overwrite
currencies['japan'] = '円'
# return nil for undefined key
currencies['brazil']

# 5.2.2 - hash loop

currencies.each do |key, value|
  puts "#{key}: #{value}"
end

# 5.2.3 - hash actions continued

x = {'a' => '1', 'b' => '2', 'c' => '3'}
y = {'a' => '1', 'c' => '3', 'b' => '2'}

# order in hash does not matter
x == y