# Program to write caesar 
def caesar_cipher(str, shift)
  chars = {
    'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6, 'g'=>7, 'h'=>8, 'i'=>9, 'j'=>10, 'k'=>11,
    'l'=>12, 'm'=>13, 'n'=>14, 'o'=>15, 'p'=>16, 'q'=>17, 'r'=>18, 's'=>19, 't'=>20, 'u'=>21,
    'v'=>22, 'w'=>23, 'x'=>24, 'y'=>25, 'z'=>26
  }

  new_str = ''
  new_value = 0
  new_key = ''
  str.each_char do |char|
    low_case = char.downcase
    unless char.match?( /[^a-zA-Z0-9]/ )
      (chars[low_case] + shift > 26) ? (new_value = (chars[low_case] + shift) - 26) : (new_value = chars[low_case] + shift)
      new_key = chars.key(new_value)
      (char == char.upcase) ? (new_str += new_key.upcase) : new_str += new_key
    else
      new_str += char
    end
  end
  new_str
end

p caesar_cipher('I mY!', 3) # => "l dc"
p caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
