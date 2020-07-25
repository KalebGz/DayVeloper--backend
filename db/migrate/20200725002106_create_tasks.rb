class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :username
      t.string :password
      t.string :profile_pic
      t.string :location

      t.timestamps
    end
  end
end
