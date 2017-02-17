class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :food_item, foreign_key: true
      t.integer :quantity
      t.string :customer_name
      t.string :phone_number
      t.string :address
      t.boolean :delivery

      t.timestamps
    end
  end
end
