class Task < ApplicationRecord
    has_many :users
    belongs_to :task_category
    # has_many :task_categories
    # has_many :categories, through: :task_categories
end
