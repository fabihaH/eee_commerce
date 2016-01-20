class ProductsTags < ActiveRecord::Migration
  def up
    create_table 'products_tags', :id => false do |t|
      t.column 'product_id', :integer
      t.column 'tag_id', :integer
  end
end

  def down
    drop_table 'products_tags'
  end
end
