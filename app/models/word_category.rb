class WordCategory < ApplicationRecord
  has_many :words

  # Returns list of words from word category that haven't been studied
  def words_to_study
    Word.all.select{|word| word.word_category==self && !word.studied}
  end

end
