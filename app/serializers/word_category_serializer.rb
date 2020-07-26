class WordCategorySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :words
end
