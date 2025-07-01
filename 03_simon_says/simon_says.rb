def echo(msg)
  msg
end

def shout(msg)
  echo(msg.upcase)
end

def repeat(msg,n = 2)
  ((echo(msg) + " ") * n).chop
end

def start_of_word(word,n = 1)
  word[0,n]
end

def first_word(word)
  word.split(" ").first
end

def titleize(msg)
  ltwrds = ["and","the", "over", "in","of", "a", "an", "to", "for", "with"]
  ix = 0
  wrds = msg.split(' ')
  wrds.each do |w|
      if !ltwrds.include?(w) or ix == 0
        w.capitalize!
      end
      ix += 1
      w
    end
  wrds.join(" ")
end