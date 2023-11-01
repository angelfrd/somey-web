class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.string :subcategory_image
      t.text :description
      t.references :machinery_category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
