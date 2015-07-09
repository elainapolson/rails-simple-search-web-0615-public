class SearchController < ApplicationController

  def index
    keyword = params[:keyword]
    fuzzy_keyword = "%#{keyword}%"

    if !Word.where(:name => keyword).empty?
      @word = Word.where(:name => keyword).first
      redirect_to word_path(@word)
    elsif 
      !Word.where(Word.arel_table[:name].matches(fuzzy_keyword)).empty?
      @fuzzy_words = Word.where(Word.arel_table[:name].matches(fuzzy_keyword))
    end
  end
end
