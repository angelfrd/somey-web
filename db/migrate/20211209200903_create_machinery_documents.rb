class CreateMachineryDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :machinery_documents do |t|
      t.string :name_document
      t.string :document
      t.references :machinery, foreign_key: true, index: true
      
      t.timestamps
    end
  end
end
