def echo(word)
  word
end

def shout(word)
  word.upcase
end


def repeat(word, x = 2)
  Array.new(x, word).join(" ")
end


def start_of_word(word, x)
  word[0, x]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(str)
  little_words = %w[and or the a an in on at to for of with by over]

  words = str.split(' ')

  words.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word.downcase)
      word.capitalize
    else
      word.downcase
    end
  end.join(' ')
end