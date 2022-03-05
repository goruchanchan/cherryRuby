def to_hex(r, g, b)
  hex_string = '#'
  [r, g, b].sum('#') do |val|
    val.to_s(16).rjust(2, '0')
  end
end
