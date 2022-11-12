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

# 5.5 => lib/convert_length.rb

# convert length in another length unit
#  convert_length(1, 'm', 'in') => 39.37

# 5.6

# 5.6.1 - deepen hash and keyword arguments

currencies = {japan: 'yen', us:'dollar', india: 'rupee'}
# return keys
currencies.keys
# return values
currencies.values

# return boolean
currencies.has_key?(:japan)
# key? include? member? are all alias of has_key?

# 5.6.2 - expand hash with **

h = {us: 'dollar', india: 'rupee'}
# same as {japan:'yen'}.merge(h)
{japan:'yen', **h}

# 5.6.3 - pseudo-keyword argument (not recommended)

def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  # brabra
end

buy_burger('cheese', drink: true, potato: true)
# no error occurs even if non-existing keyword is declared
buy_burge('fish', salad: true)

# 5.6.4 - ** argument

def buy_burger(menu, drink: true, potato: true, **others)
  # others as hash
  puts others
end

buy_burger('fish', drinK: true, potato: true, salad: true, chicken: true) # => {:drink=>true, :salad=>true, :chicken=>true}

# 5.6.5 - ** needs to be declared

buy_burger('fish', **params)

# 5.6.6 - {} can be abbriveated

buy_burger('cheese', "drink"=>true, "salad"=>true) # => {"drink"=>true, "salad"=>true}

# 5.6.7 - trivia on hash

puts({foo:1,bar:2})

# 5.6.8 - hash to array, array to hash

currencies = {japan: 'yen', india: 'rupee', us: 'dollar' }
currencies.to_a
currencies.to_h

# 5.6.9 - set default value for hash

h = Hash.new('hello') # pattern 1
h = Hash.new {'hello'} # pattern 2

h = Hash.new { |hash,key| hash[key]= 'hello'}
h[:boo]
h[:far]
# => {:boo=>"hello", :far=>"hello"}

# 5.7

# 5.7.1 - ways to produce symbols

:+
:123 # syntax error
:'123' # valid

name = 'Alice'
:"#{name.upcase}" #=> :ALICE

hash = {'abc': 123}
