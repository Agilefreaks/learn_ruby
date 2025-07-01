class Book
  attr_reader :title


  LOWERCASE_WORDS = %w[a an the and in of on at to for but nor or]

  def title=(value)
    words = value.split(' ')
    capitalized_words = words.map.with_index do |word, index|
      if word.downcase == 'i'
        'I'
      elsif index == 0
        word.capitalize
      elsif LOWERCASE_WORDS.include?(word.downcase)
        word.downcase
      else
        word.capitalize
      end
    end
    @title = capitalized_words.join(' ')
  end
end
