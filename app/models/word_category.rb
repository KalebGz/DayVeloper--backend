class WordCategory < ApplicationRecord
  # belongs_to :word
  # belongs_to :category
  has_many :words
end
