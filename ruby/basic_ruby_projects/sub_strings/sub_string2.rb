def substrings(text, dictionary)
  clean_text = text.downcase
  
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    matches = clean_text.scan(word.downcase).length
    
    result[word] = matches if matches > 0
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Teste 1: 'below'"
p substrings("below", dictionary)

puts "\nTeste 2: Frase completa"
p substrings("Howdy partner, sit down! How's it going?", dictionary)