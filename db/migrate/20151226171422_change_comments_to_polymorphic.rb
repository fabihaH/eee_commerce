class ChangeCommentsToPolymorphic < ActiveRecord::Migration
  def up
    remove_index :comments, :product_id
    remove_column :comments, :product_id

    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end

  def down
    remove_column :comments, :commentable_type
    remove_column :comments, :commentable_id

    add_column :comments, :product_id, :integer
    add_index :comments, :product_id
  end
end
