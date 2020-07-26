class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :term
      t.text :defintion
      t.integer :user_id
      t.integer :word_category_id
      # t.belongs_to :user, null: false, foreign_key: true
      # t.belongs_to :word_category, null: false, foreign_key: true


      t.timestamps
    end
  end
end
