class Word < ApplicationRecord
  belongs_to :user  
  has_many :word_categories
  has_many :categories, through: :word_categories

end
