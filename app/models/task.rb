class Task < ApplicationRecord
    # has_many :users
    has_many :task_categories
    has_many :categories, through: :task_categories
end
