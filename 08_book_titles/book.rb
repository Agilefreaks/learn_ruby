class Book

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


  def title=(title)
    @title = titleize(title)
  end

  def title
    @title
  end
end