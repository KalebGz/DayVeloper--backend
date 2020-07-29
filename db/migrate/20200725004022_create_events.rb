class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :notif_time
      t.integer :user_id
    end
  end
end
