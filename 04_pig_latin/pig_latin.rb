def translate(text)
  vowels = "aeiou"
  words = text.split(" ")

  words.map! do |word|
    if vowels.include?(word[0])
      word + "ay"
    else
      if word.start_with?("qu")
        word = word[2..-1] + "qu"
      elsif word[1..2] == "qu"
        word = word[3..-1] + word[0..2]
      else
        while !vowels.include?(word[0]) do
          word = word[1..-1] + word[0]
        end
      end
      word + "ay"
    end
  end

  result = words.join(" ")
  puts result
  result
end
