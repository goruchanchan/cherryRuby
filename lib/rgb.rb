def to_hex(r, g, b)
  hex_string = '#'
  [r, g, b].each do |val|
    hex_string += val.to_s(16).rjust(2, '0')
  end
  hex_string
end
