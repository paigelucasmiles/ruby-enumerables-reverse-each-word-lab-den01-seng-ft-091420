require 'pry'


def reverse_each_word(string)
array = string.split
  array_letters = []
  array.collect do |element|
    array_letters.push(element.chars)
  end
  reversed_nested_array = []
  temp_reversed_nested_array = []
  array_letters.each do |word|
    word.reverse_each do |letters|
      temp_reversed_nested_array.push(letters)
    end
    reversed_nested_array.push(temp_reversed_nested_array.clone)
    temp_reversed_nested_array.clear
  end
  reversed_nested_words = []
  reversed_nested_array.each do |srettel|
    reversed_nested_words.push(srettel.join("").clone)
  end
  reversed_nested_words.join(" ")
end
 