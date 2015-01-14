class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :content
      t.integer :status
      t.integer :qoh
      t.integer :price
      t.integer :supplier_id
      t.integer :safety

      t.timestamps null: false
    end
    add_index :products, :status
    add_index :products, :qoh
    add_index :products, :price
    add_index :products, :safety
  end
end
