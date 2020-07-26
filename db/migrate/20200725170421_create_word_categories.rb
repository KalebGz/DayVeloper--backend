class CreateWordCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :word_categories do |t|
      # t.belongs_to :word, null: false, foreign_key: true
      # t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
