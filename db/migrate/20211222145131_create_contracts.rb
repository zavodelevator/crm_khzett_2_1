class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.string :contragent_name
      t.string :data_time
      t.string :number
      t.string :note
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
