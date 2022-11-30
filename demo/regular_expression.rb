# 6.1

# 6.1.1 - convert hash format from one to the other

# format 1
{
  name: "Alice",
  age: 18,
  gender: :male
}

# format 2
{
  :name => "Alice",
  :age => 18,
  :gender => :male
}

# 6.1.2 - example of convert_hash_syntax

old_syntax = <<TEXT
{
  :name => "Alice",
  :age=>18,
  :gender => :male
}
TEXT

# # convert convert_hash_syntax(old_syntax)
# {
#   name: "Alice",
#   age: 18,
#   gender: :male
# }

# 6.2

# 6.2.1 - know the goodness of regex

text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

text.scan(/[A-Z][A-Za-z]+/)

# 6.3

# format: /Regexp/

r = /\d{3}-\d{4}/
r.class # Regexp

if '123-1234' =~ r
  puts 'matching'
else
  puts 'not matching'
end

if '123-1234' !~ r
  puts 'not matching'
else
  puts 'matching'
end

# 6.3.2 - capture func

birthday = '私の誕生日は2003年11月12日'
m = /(\d+)年(\d+)月(\d+)日/.match(birthday)
m[1] # 2003
m[2] # 11
m[3] # 12

# 6.3.3 - naming capture variables

m = /(?<year>\d+)年(?<month>\d+)月(?<date>\d+)日/.match(birthday)
year # 2003
month # 11
date # 12

# 6.3.4 - get match data with $

birthday = '私の誕生日は2003年11月12日'
birthday =~ /(\d+)年(\d+)月(\d+)日/

$~ # => #<MatchData "2003年11月12日" 1:"2003" 2:"11" 3:"12">

$1 # 2003
$2 # 11
$3 # 12
$+ # 12

# 6.3.5 - useful methods for regex

birthday = '私の誕生日は2003年11月12日か2004年1月23日'
birthday.scan(/(\d+)年(\d+)月(\d+)日/) # => [["2003", "11", "12"], ["2004", "1", "23"]]

# 6.5

# 6.5.1 - a few ways to prodce regex object

Regexp.new('\d{3}-\d{4}') # = /\d{3}-\d{4}/

# need to escaple / with \
/https:\/\/example\.com/

%r!https:/example\.com!

%r{https://example\.com}

