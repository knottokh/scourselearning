
Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_product',
  name: 'add_course_to_submenu',
  replace: '#sidebar-product',
  text: %q{
    <ul id="sidebar-product" class="collapse nav nav-pills nav-stacked" data-hook="admin_product_sub_tabs">
      <%= tab :courses, match_path: '/courses' %>    
      <%= tab :products, match_path: '/products' %>
      <%= tab :option_types, match_path: '/option_types' %>
      <%= tab :properties %>
      <%= tab :prototypes %>
      <%= tab :taxonomies, match_path: '/taxonomies' %>
      <%= tab :taxons, match_path: '/taxons' %>
    </ul>
  }
)