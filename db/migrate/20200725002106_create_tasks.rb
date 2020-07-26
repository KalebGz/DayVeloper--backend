class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :username
      t.string :password
      t.string :profile_pic
      t.string :location
      # t.belongs_to :task_category, null: false, foreign_key: true
      t.integer :task_category_id

      t.timestamps
    end
  end
end
