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
x == y # true

x.delete('a')

x == y # false

x.delete('d') # return nil
x.delete('d') {|key| "Not found: #{key}"} # block creates returned value

# 5.3 - symbol

:apple.class

# 5.3.1 - diff btw symbol and string

# same object
:apple.object_id
:apple.object_id
# diff objects
'apple'.object_id
'apple'.object_id

# symbol is immutable
'apple'.upcase! # APPLE
:apple.upcase! # undefined method `upcase!' for :apple:Symbol (NoMethodError)

# 5.3.2 - how to use symbol

currencies = {:japan => 'yen', :us  => 'dollar', :india => 'ruppe'}
currencies[:japan]

# manage status w/ symbol

status = :doing

case status
when :todo
  'to do'
when :doing
  'in progress'
when :done
  'done'
end

# 5.4 - hash again

# 5.4.1 - hash key
# : reversed instead of using =>
currencies = {japan: 'yen', us:'dollar', india: 'rupee'}
currencies[:us]
# symbol as key and value
currencies = {japan: :yen, us: :dollar, india: :rupee}

# 5.4.2 - bad format

idea = {'peanut' => 123, noodle: 234}
# right key
idea['peanut']
idea[:noodle]
# null
idea[:peanut]
idea['noodle']

# 5.4.3 - keyword argument

def buy_burger(menu, drink: true, potato: true)
  # buy burger
  if drink
    # buy drink
  end
  if potato
    # buy potato
  end
end

buy_burger('fish', true, true)
# with keyword arg, easy to read
buy_burger('cheese', drink: true, potato: true)
# can omit arg because default set
buy_burger('cheese', drink: false)

# can omit default arg when def
def buy_burger(menu, drink:, potato:)
end
