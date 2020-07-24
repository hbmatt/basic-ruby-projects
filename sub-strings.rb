def substrings(string, dictionary)
  string_array = string.downcase.gsub(/\W/, ' ').split

  substrings = string_array.select do |word|
    dictionary.include?(word)
  end

  results = { }

  substrings.each do |word|
    results[word] = results[word].to_i + 1
  end

  return results
end

puts "Enter a string:"
original_string = gets.chomp

puts "Choose a dictionary to use:"
puts "1. Prepositions"
puts "2. Pronouns"
puts "3. Conjunctions"
dictionary_choice = gets.chomp

while dictionary_choice.to_i == 0 || dictionary_choice.to_i > 3
  puts "Choose a dictionary to use:"
  puts "1. Prepositions"
  puts "2. Pronouns"
  puts "3. Conjunctions"
  dictionary_choice = gets.chomp
end

if dictionary_choice == "1"
  dictionary = %w(above across against along among around at before behind below beneath beside between by down from in into near of off on to toward under upon with within)
elsif dictionary_choice == "2"
  dictionary = %w(i you he she it we you they me you him her it us you them my your his its our your their mine yours hers ours yours theirs myself yourself himself itself ourselves yourselves themselves)
elsif dictionary_choice == "3"
  dictionary = %w(for and nor but or yet so)
end

puts "The substrings that were found are:"
p substrings(original_string,dictionary)
