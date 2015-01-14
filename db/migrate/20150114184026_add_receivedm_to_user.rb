class AddReceivedmToUser < ActiveRecord::Migration
  def change
    add_column :users, :receive_dm, :integer
    add_index :users, :receive_dm
  end
end
