class AddUserIdToComment < ActiveRecord::Migration
  def up
    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
  def down
    remove_index :comments, :user_id
    remove_column :comments, :user_id
  end
end
