class NewEnglishColumnsToMachineryCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :machinery_categories, :name_en, :string
    add_column :machinery_categories, :description_en, :text
  end
end
