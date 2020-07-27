class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
      t.string :title
      t.integer :task_id
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
