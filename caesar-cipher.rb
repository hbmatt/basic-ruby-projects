def caesar_cipher(string, shift)
  string_array = string.split('')

  ascii_array = string_array.map do |letter|
    if letter.ord >= 65 && letter.ord <=90
      letter.ord
    elsif letter.ord >= 97 && letter.ord <=122
      letter.ord
    else
      letter
    end
  end

  def wrap(num, shift)
    if num >= 65 && num <= 90
      num -= 65
      num += shift
      num = (num % 26 + 26) % 26
      num += 65
    else
      num -= 97
      num += shift
      num = (num % 26 + 26) % 26
      num += 97
    end
  end

  ascii_array = ascii_array.map do |code|
    if code.to_i != 0
      wrap(code, shift)
    else
      code
    end
  end

  shifted_array = ascii_array.map do |code|
    code.chr
  end

  shifted_string = shifted_array.join

  return shifted_string
end

puts "Enter a string to encrypt:"
original_string = gets.chomp

puts "Enter a shift factor:"
shift = gets.chomp.to_i

while shift == 0
  puts "Please enter an integer greater than 0."
  shift = gets.chomp.to_i
end

puts "Your encrypted string is:"
puts caesar_cipher(original_string, shift)