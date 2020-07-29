class CreateWordCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :word_categories do |t|
      t.string :name
    end
  end
end
