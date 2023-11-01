class NewEnglishColumnsToSubcategories < ActiveRecord::Migration[5.1]
  def change
    add_column :subcategories, :name_en, :string
    add_column :subcategories, :description_en, :text
  end
end
