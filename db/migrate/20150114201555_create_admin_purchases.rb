class CreateAdminPurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :supplier_id
      t.integer :product_id
      t.integer :cpu
      t.integer :qty
      t.integer :total
      t.datetime :deliver_at
      t.integer :status

      t.timestamps null: false
    end
    add_index :purchases, :supplier_id
    add_index :purchases, :product_id
    add_index :purchases, :deliver_at
    add_index :purchases, :status
  end
end
