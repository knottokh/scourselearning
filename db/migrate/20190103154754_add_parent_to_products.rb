class AddParentToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_products, :parent_id, :integer
    add_index :spree_products, :parent_id
  end
end
