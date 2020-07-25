class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
      t.string :title
      t.string :description
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
