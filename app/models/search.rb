class Search

  def self.for(word)
    fuzzy_word = "%#{word}%"
    Word.where(Word.arel_table[:name].matches(fuzzy_word))
  end

end
