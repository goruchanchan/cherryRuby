def to_hex(r, g, b)
  hex_string = '#'
  [r, g, b].sum('#') do |val|
    val.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]

  ints = []
  [r, g, b].each do |val|
    ints << val.hex
  end
  ints
end
