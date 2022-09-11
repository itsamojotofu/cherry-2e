# Spec requirements
# define two methods: one is to convert Decimal to Hexadecimal, the other is to convert Hexadecimal to Decimal

def to_hex(r,g,b)
  [r,g,b].sum('#') do |n|
    n.to_s(16).rjust(2,'0')
  end
end

def to_ints(hex)
  [0,0,0]
end