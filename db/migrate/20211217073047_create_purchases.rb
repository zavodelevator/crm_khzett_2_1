class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :name_product
      t.string :count
      t.string :_price
      t.string :stage_buy
      t.string :stage_in_corp
      t.string :plus_info
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
