class CreateDocunets < ActiveRecord::Migration[6.1]
  def change
    create_table :docunets do |t|
      t.string :name_document
      t.string :second_column
      t.string :note

      t.timestamps
    end
  end
end
