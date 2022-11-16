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