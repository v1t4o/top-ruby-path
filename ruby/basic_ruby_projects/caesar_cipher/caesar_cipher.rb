ALPHABET = {
  0 => "A",
  1 => "B",
  2 => "C",
  3 => "D",
  4 => "E",
  5 => "F",
  6 => "G",
  7 => "H", 
  8 => "I",
  9 => "J",
  10 => "K",
  11 => "L",
  12 => "M",
  13 => "N",
  14 => "O",
  15 => "P",
  16 => "Q",
  17 => "R",
  18 => "S",
  19 => "T",
  20 => "U",
  21 => "V",
  22 => "W",
  23 => "X",
  24 => "Y",
  25 => "Z",
}


def find_char_in_alphabet(value)
  ALPHABET.key(value)
end

def caesar_cipher(message, positions)
  message = message.split("")

  new_message = []

  message.each_with_index do |value, index|
    if value.match?(/\A[a-zA-Z]*\z/) 
      position = find_char_in_alphabet(value.upcase)
      position += positions
      position -= 26 if position >= 25

      word = ALPHABET[position]
      word = word.downcase if value.match?(/[[:lower:]]/)

      new_message[index] = word
    elsif value.match?(/\s/)
      new_message[index] = " "
    else
      new_message[index] = value
    end
  end

  new_message.join
end

puts caesar_cipher("What a string!", 5)
