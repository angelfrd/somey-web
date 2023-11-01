class AddColumnsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :machinery_categories, :description, :text
    add_column :machinery_categories, :image, :string
  end
end
