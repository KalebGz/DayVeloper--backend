class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :term
      t.text :defintion
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
