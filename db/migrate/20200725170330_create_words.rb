class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :term
      t.text :definition
      t.integer :user_id
      t.integer :word_category_id
      t.boolean :studied, default: false


      t.timestamps
    end
  end
end
