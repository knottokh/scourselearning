class AddCourseIdToVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :course_id, :integer
    add_index :spree_variants, :course_id
  end
end
