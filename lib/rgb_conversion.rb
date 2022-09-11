# Spec requirements
# define two methods: one is to convert Decimal to Hexadecimal, the other is to convert Hexadecimal to Decimal

def to_hex(r,g,b)
  hex = '#'
  [r,g,b].each do |n|
    hex += n.to_s(16).rjust(2,'0')
  end
  hex
end