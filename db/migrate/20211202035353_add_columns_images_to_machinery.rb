class AddColumnsImagesToMachinery < ActiveRecord::Migration[5.1]
  def change
    add_column :machineries, :image1, :string
    add_column :machineries, :image2, :string
    add_column :machineries, :image3, :string
    add_column :machineries, :image4, :string
    add_column :machineries, :image5, :string
  end
end
