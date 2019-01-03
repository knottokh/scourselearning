Spree::Product.class_eval do
    
    belongs_to :parent, :class_name => 'Spree::Product'
    has_many :children, :class_name => 'Spree::Product', :foreign_key => 'parent_id'
end