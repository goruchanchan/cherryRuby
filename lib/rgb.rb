def to_hex(r, g, b)
  hex_string = '#'
  [r, g, b].sum('#') do |val|
    val.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map do |val|
    val.hex
  end

end
