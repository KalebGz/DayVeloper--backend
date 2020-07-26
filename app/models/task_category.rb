class TaskCategory < ApplicationRecord
  has_many :tasks
  # belongs_to :task
  # belongs_to :category
end
