class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.datetime :notif_time
      # t.belongs_to :user, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
