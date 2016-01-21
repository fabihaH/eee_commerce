class AddUserIdToProduct < ActiveRecord::Migration
  def up
    add_column :products, :user_id, :integer
    add_index :products, :user_id
  end
  def down
    remove_index :products, :user_id
    remove_column :products, :user_id
  end
end
