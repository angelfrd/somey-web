class NewEnglishColumnsToMachineries < ActiveRecord::Migration[5.1]
  def change
    add_column :machineries, :name_en, :string
    add_column :machineries, :description_en, :text
    add_column :machineries, :technical_description_en, :text
  end
end
