class CreatePiples < ActiveRecord::Migration[6.1]
  def change
    create_table :piples do |t|
      t.string :first_name
      t.string :last_name
      t.string :parens_name
      t.string :email
      t.string :phone
      t.string :sex
      t.string :beardth_date
      t.string :other_date
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
