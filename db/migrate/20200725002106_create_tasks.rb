class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      # Title(string), description(string)
      t.string :title
      t.string :description
      t.integer :task_category_id
      t.integer :user_id
      # t.belongs_to :task_category, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
