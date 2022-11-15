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