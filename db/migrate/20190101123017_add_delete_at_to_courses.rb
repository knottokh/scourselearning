class AddDeleteAtToCourses < ActiveRecord::Migration[5.2]
  def change
      
      add_column :spree_courses, :available_on, :datetime
      add_column :spree_courses, :deleted_at, :datetime
      add_column :spree_courses, :slug, :string
      
      remove_index :spree_courses, :available_on if index_exists?(:spree_courses, :available_on)
      add_index :spree_courses, :available_on
      remove_index :spree_courses, :name if index_exists?(:spree_courses, :name)
      add_index :spree_courses, :name
      remove_index :spree_courses, :deleted_at if index_exists?(:spree_courses, :deleted_at)
      add_index :spree_courses, :deleted_at
      remove_index :spree_courses, :slug if index_exists?(:spree_courses, :slug)
      add_index :spree_courses, :slug, unique: true
  end
end
