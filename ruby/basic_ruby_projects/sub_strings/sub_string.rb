def substrings(expression, dictionary)
  words = expression.downcase.split(/[^a-zA-Z]+/)

  dictionary.map { |entry| words.flat_map {|word| word.scan(entry) }.tally }.reduce({}, :merge).compact
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)