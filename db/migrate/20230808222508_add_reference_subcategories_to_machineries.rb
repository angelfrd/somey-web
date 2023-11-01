class AddReferenceSubcategoriesToMachineries < ActiveRecord::Migration[5.1]
  def change
    add_reference :machineries, :subcategory, index: true, foreign_key: true
  end
end
