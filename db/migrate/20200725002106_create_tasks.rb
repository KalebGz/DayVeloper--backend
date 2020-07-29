class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :task_category_id
      t.integer :user_id
      t.boolean :completed, default: false
    end
  end
end
