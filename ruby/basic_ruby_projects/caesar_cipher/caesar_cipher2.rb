ALPHABET = ('A'..'Z').to_a

def caesar_cipher(message, shift)
  message.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      current_index = ALPHABET.index(char.upcase)

      new_index = (current_index + shift) % 26

      new_char = ALPHABET[new_index]

      char == char.upcase ? new_char : new_char.downcase
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)
