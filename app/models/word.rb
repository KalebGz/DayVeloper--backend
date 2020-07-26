class Word < ApplicationRecord
  belongs_to :user  
  belongs_to :word_category
  # has_many :word_categories
  # has_many :categories, through: :word_categories

end
