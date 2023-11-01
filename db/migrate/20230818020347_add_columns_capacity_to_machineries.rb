class AddColumnsCapacityToMachineries < ActiveRecord::Migration[5.1]
  def change
    add_column :machineries, :capacity_start, :string
    add_column :machineries, :capacity_end, :string
    add_column :machineries, :unit, :string
  end
end
