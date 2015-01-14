class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.text :note
      t.integer :kind

      t.timestamps null: false
    end
    add_index :feedbacks, :kind
  end
end
