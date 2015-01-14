class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :qty
      t.integer :unit_price
      t.integer :total
      t.integer :status
      t.string :delivery_name
      t.string :delivery_address
      t.string :delivery_phone
      t.string :credit_card_number
      t.string :cvv

      t.timestamps null: false
    end
    add_index :orders, :product_id
    add_index :orders, :user_id
    add_index :orders, :status
  end
end
