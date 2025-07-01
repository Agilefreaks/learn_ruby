def translate(word)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include?(word[0].downcase)
    word + "ay"
  else
    consonant_cluster = word[/\A[^aeiou]+/]
    word[consonant_cluster.length..-1] + consonant_cluster + "ay"
  end
end