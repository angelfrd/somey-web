class CreateMachineries < ActiveRecord::Migration[5.1]
  def change
    create_table :machineries do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
