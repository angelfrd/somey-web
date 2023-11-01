class AddColumnsToMachineries < ActiveRecord::Migration[5.1]
  def change
    add_column :machineries, :technical_description, :text
    add_column :machineries, :link, :string
  end
end
