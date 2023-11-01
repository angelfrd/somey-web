class MachineryImages < ActiveRecord::Migration[5.1]
  def change
    create_table :machinery_images do |t|
      t.string :file_name
      t.references :machinery, foreign_key: true, index: true

      t.timestamps
    end
  end
end
