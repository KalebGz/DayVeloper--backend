class CreateTaskCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :task_categories do |t|
      # t.belongs_to :task, null: false, foreign_key: true
      # t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
