class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :contact_person
      t.string :adress_custommer
      t.string :edrpou
      t.string :email
      t.string :website
      t.string :note
      t.string :dev_date

      t.timestamps
    end
  end
end
