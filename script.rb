# frozen_string_literal: true

def substrings(string, dictionary)
  # p dictionary
  words = string.split(' ')
  dictionary.each_with_object(Hash.new(0)) do |substring, acc|
    words.each do |word|
      acc[substring] += 1 if word.downcase.match?(substring)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
