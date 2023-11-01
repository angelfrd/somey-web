class AddReferenceCategoryToMachinery < ActiveRecord::Migration[5.1]
  def change
    add_reference :machineries, :machinery_category, index: true, foreign_key: true
  end
end
