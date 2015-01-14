class CreateAdminWarehouses < ActiveRecord::Migration
  def change
    create_table :admin_warehouses do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
