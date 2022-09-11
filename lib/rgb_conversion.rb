# Spec requirements
# define two methods: one is to convert Decimal to Hexadecimal, the other is to convert Hexadecimal to Decimal

def to_hex(r,g,b)
  [r,g,b].sum('#') do |n|
    n.to_s(16).rjust(2,'0')
  end
end

def to_ints(hex)
  # replace r,g,b = hex[1..2], hex[3..4], hex[5..6] with validation(scan method)
  hex.scan(/\w\w/).map(&:hex)
end